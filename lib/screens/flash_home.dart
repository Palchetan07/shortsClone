import 'package:flutter/material.dart';
import 'package:shorts/screens/content_screen.dart';
import 'package:shorts/screens/home_page.dart';


class InstaHome extends StatelessWidget {
  final topBar =   AppBar(
    backgroundColor:  const Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: const Icon(Icons.camera_alt),
    title: SizedBox(
        height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
    actions:const <Widget>[
       Padding(
        padding:  EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: topBar,
        body: const ContentScreen(),
        bottomNavigationBar:  Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child:  BottomAppBar(color: Colors.white,
            child:   Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const  IconButton(
                  icon:  Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  onPressed: null ,

                ),
                const   IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: null,

                ),
                const   IconButton(
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.black,
                  ),
                  onPressed: null,
                ),
                 IconButton(
                  icon:const  Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  onPressed: (){print("Chetan psl");
                  }

                ),
                const IconButton(
                  icon: Icon(
                    Icons.account_box,
                    color: Colors.black,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ));
  }
}