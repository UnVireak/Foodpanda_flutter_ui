import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyFlexiableAppBar_detail_screen extends StatelessWidget {

  final double appBarHeight = 66.0;

  const MyFlexiableAppBar_detail_screen();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return  new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      child:  Center(
          child:
           Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
              height: 70,
              child: Container(
               
                height: 300,
               
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: Color.fromRGBO(251, 246, 246, 1),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search for shops & restaurants',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
           
            ),
            ],
            )
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        
        
      ),
    );
  }
}