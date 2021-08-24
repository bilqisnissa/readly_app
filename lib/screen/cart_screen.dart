import 'package:flutter/material.dart';
import 'package:readly_app/model/book.dart';
import 'package:readly_app/model/cart.dart';
import 'package:readly_app/screen/checkout_screen.dart';
import 'package:readly_app/util/widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isFabCheckoutVisible = false;


  @override
  Widget build(BuildContext context) {
    if (cartList.length > 0){
      isFabCheckoutVisible = true;
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Cart',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      floatingActionButton: Visibility(
        visible: isFabCheckoutVisible,
        child: Container(
          padding: EdgeInsets.only(left: 16),
          margin: EdgeInsets.only(left: 16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CheckoutScreen();
              }));
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(1000, 4, 93, 42)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Checkout'), Icon(Icons.arrow_forward_ios)],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: cartList.length > 0
            ? Padding(
          padding:
          const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: ListView.builder(
            itemBuilder: (context, index) {
              var book = findBook(cartList[index]);
              return Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        child: Container(
                          child: Image.network(book.bookImage),
                          decoration:
                          BoxDecoration(color: book.bookColor),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book.bookName,
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(rupiahCurrencyFormat.format(book.bookPrice))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            deleteItemCart(book.bookId);
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.grey,
                          )),
                    )
                  ],
                ),
              );
            },
            itemCount: cartList.length,
          ),
        )
            : Center(child: Text('Empty cart, please add some item')),
      ),
    );
  }

  Book findBook(Cart cartItem) {
    return bookList.firstWhere((book) => book.bookId == cartItem.bookId);
  }

  deleteItemCart(int bookId) {
    setState(() {
      cartList.removeWhere((cartItem) => cartItem.bookId == bookId);
      if (cartList.length == 0) {}
    });
  }
}
