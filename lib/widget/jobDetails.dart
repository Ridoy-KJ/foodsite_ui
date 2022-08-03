import 'package:day24/data/jobData.dart';
import 'package:flutter/material.dart';

import 'job_details_list.dart';

class JobDetails extends StatelessWidget {
  JobDetails({Key? key}) : super(key: key);

  final talikaList = JobModel.talika();

  @override
  Widget build(BuildContext context) {
    return Container(

      height:180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.transparent
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: talikaList.length,
        itemBuilder:(context, index) {
          return JobDetailsList(talikaList[index]);
        }, ),
    );

  }
}

