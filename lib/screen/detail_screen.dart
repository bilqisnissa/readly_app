import 'package:flutter/material.dart';
import 'package:readly_app/model/book.dart';
import 'package:readly_app/model/cart.dart';
import 'package:readly_app/screen/cart_screen.dart';
import 'package:readly_app/screen/checkout_screen.dart';
import 'package:readly_app/util/badge.dart';
import 'package:readly_app/util/widget.dart';
import 'package:collection/collection.dart';

class DetailScreen extends StatefulWidget {
  final Book book;

  const DetailScreen({required this.book});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  color: widget.book.bookColor,
                  child: Image.network(
                    widget.book.bookImage,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      Stack(alignment: Alignment.topRight, children: [
                        IconButton(
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return CartScreen();
                              })).then((value) => setState(() {}));
                            }),
                        cartList.length > 0
                            ? Badge(numberValue: (cartList.length).toString())
                            : Container()
                      ])
                    ],
                  ),
                ))
              ],
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -40.0, 0.0),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.book.bookName,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 24),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Text(
                                  widget.book.bookAuthor,
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          ),
                          Text(
                            rupiahCurrencyFormat.format(widget.book.bookPrice),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Description',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        widget.book.bookDescriptions,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.black),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  addToCart(widget.book.bookId, context);
                                },
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(14.0),
                                    primary: Color.fromARGB(0, 255, 255, 255)),
                                child: Icon(Icons.add_shopping_cart_outlined)),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 16),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(1000, 4, 93, 42),
                                        padding: EdgeInsets.all(16.0)),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return CheckoutScreen();
                                      }));
                                    },
                                    child: Text(
                                      'Buy Now',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void addToCart(bookId, context) {
    bool isItemExist = false;
    if (cartList.firstWhereOrNull((cartItem) => cartItem.bookId == bookId) !=
        null) {
      isItemExist = true;
    }
    if (isItemExist) {
      final snackBar = SnackBar(content: Text('item already in cart!'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      setState(() {
        cartList.add(Cart(bookId: bookId));
      });
      final snackBar = SnackBar(content: Text('item added to cart !'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
