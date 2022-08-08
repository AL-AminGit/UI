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
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: Container(
                height: 8,
                width: 50,
                color: Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          _job.logoUrl,
                        ),
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                _job.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.orange.withOpacity(.2),
                      ),
                      Text(
                        _job.location,
                        style: TextStyle(fontSize: 12),
                      ),
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
            ),

            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                "Requirements",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
                //textAlign: TextAlign.end,
              ),
            ),

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
      ),
    );
  }
}
