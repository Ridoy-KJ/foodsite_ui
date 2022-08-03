import 'package:day24/data/jobData.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDetailsList extends StatelessWidget {

  JobModel jobModel;
  JobDetailsList(this.jobModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('${jobModel.icon}',height: 40,width: 40,),
              Text('${jobModel.name}',
                  style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),),
              Spacer(),
              Image.asset('assets/icons/bookmark.png',height: 20,width: 20,)
            ],
          ),
          Text('${jobModel.designation}',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold,
            fontSize: 16),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Icon(Icons.location_on,color: Color(0xfffed409).withOpacity(.6),),
              Text('${jobModel.location}',
                style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
