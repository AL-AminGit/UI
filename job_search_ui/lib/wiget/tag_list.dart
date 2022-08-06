import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _tagList = [
    "All",
    "⚡ Popular",
    "⭐ Featured",
    "New",
    "⚡ Collection",
    "⭐ Update",
    "Recent",
    "⚡ Popular",
    "⭐ Featured"
  ];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _tagList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (() {
              setState(() {
                selected = index;
              });
            }),
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: selected == index ? Colors.red : Colors.white,
                borderRadius: selected == index
                    ? BorderRadius.circular(30)
                    : BorderRadius.circular(10),
                border: Border.all(
                  width: 3,
                  color: selected != index
                      ? Colors.blue.withOpacity(.2)
                      : Colors.transparent,
                ),
              ),
              child: Text(
                _tagList[index],
                // textAlign: TextAlign.center,
                style: selected == index
                    ? TextStyle(fontWeight: FontWeight.bold)
                    : TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
          );
        },
        separatorBuilder: (_, index) => SizedBox(
          width: 20,
        ),
      ),
    );
  }
}
