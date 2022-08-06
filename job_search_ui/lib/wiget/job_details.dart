import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:job_search_ui/model/job.dart';

class JobDetails extends StatelessWidget {
  Job _job;

  JobDetails(this._job);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            child: Container(
              height: 8,
              width: 20,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(_job.logoUrl),
                  ),
                  Text(_job.company),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.bookmark),
                  Icon(Icons.more_horiz),
                ],
              ),
            ],
          ),
          Text(_job.title),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text(_job.location),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.timer),
                  Text("Full Time"),
                ],
              ),
            ],
          ),
          Text("Requirements"),

          //spread operator
          ..._job.req
              .map((e) => Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(30),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 300),
                          child: Text(e),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
