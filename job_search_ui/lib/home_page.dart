import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_search_ui/wiget/home_appbar.dart';
import 'package:job_search_ui/wiget/job_list.dart';
import 'package:job_search_ui/wiget/search_bar.dart';
import 'package:job_search_ui/wiget/tag_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(.3),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                HomeAppBar(),
                SizedBox(
                  height: 15,
                ),
                SearchBar(),
                SizedBox(
                  height: 15,
                ),
                TagList(),
                SizedBox(
                  height: 10,
                ),
                JobList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
