import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readly_app/model/book.dart';
import 'package:readly_app/screen/cart_screen.dart';
import 'package:readly_app/screen/detail_screen.dart';
import 'package:readly_app/screen/info_screen.dart';
import 'package:readly_app/util/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Readly',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Cappung'),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CartScreen();
                }));
              }),
          IconButton(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InfoScreen();
                }));
              })
        ],
      ),
      body: Container(
        color: blueColor,
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Material(
          color: Colors.transparent,
          child: Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: bookList.map((book) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return DetailScreen(book: book);
                        }));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Image.network(
                                book.bookImage, width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.5 - 20, height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.2 - 60),
                            decoration: BoxDecoration(color: book.bookColor),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4, left: 4),
                        child: Text(
                          book.bookName,
                          style: TextStyle(fontSize: 16,),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4, left: 4),
                        child: Text(
                          rupiahCurrencyFormat.format(book.bookPrice),
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

}