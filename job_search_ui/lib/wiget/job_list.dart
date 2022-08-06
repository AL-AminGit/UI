import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_search_ui/wiget/job_details.dart';
import 'package:job_search_ui/wiget/job_item.dart';

import '../model/job.dart';
//import 'package:job_search_ui/model/job.dart';

class JobList extends StatelessWidget {
  final get_all_job = Job.generateJobs();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: get_all_job.length,
        itemBuilder: (_, index) {
          return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => JobDetails(get_all_job[index]),
                );
              },
              child: JobItem(get_all_job[index]));
        },
        separatorBuilder: (_, index) => SizedBox(
          height: 6,
        ),
      ),
    );
  }
}
