import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/job.dart';
//import 'package:job_search_ui/model/job.dart';

class JobItem extends StatelessWidget {
  final Job _job;

  JobItem(this._job);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  alignment: Alignment.center,
      margin: EdgeInsets.all(6),
      width: 350,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // ignore: avoid_unnecessary_containers
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      _job.logoUrl,
                      // color: Colors.white,
                    ),
                    // width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    _job.company,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(
                Icons.bookmark_outline_outlined,
                color: Colors.white.withOpacity(.5),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            _job.title,
            style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.orange,
                ),
                Text(
                  _job.location,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
