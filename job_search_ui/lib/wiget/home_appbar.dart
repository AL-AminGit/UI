import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: Column(
                  children: [
                    Text(
                      "Welcome Home",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(.6),
                      ),
                    ),
                    Text(
                      "Annie Bryant",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 10, top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Positioned(
                      left: 20,
                      top: 2,
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 28, top: 18),
                      transform: Matrix4.rotationZ(100),
                      // padding: EdgeInsets.all(1),
                      child: Icon(
                        Icons.notifications_none_outlined,
                      ),
                    ),
                  ],
                ),
                ClipOval(
                  child: Image.asset(
                    "assets/images/avatar.png",
                    width: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
