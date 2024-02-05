import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SliverPickUpScreen extends StatelessWidget {
  final double appBarHeight = 66.0;

  const SliverPickUpScreen();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                          fillColor: const Color.fromARGB(255, 234, 230, 230),
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
                IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.sliders, 
                color: Colors.pink,),)
              ],
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
