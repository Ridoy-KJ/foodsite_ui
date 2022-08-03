import 'package:flutter/material.dart';
import 'package:day24/widget/jobDetails.dart';

class JobModel{
  String? icon;
  String? name;
  String? designation;
  String? location;
 JobModel({this.name,this.icon,this.designation,this.location});


 static List<JobModel> talika() {
   return [
     JobModel(
         icon: 'assets/icons/airbnb.jpg',
         name: 'Airbnb inc,',
         designation: 'VP Business Intelegence',
         location: '50 Herminia Stravenue,\nCanda'
     ),
     JobModel(
         icon: 'assets/icons/google.png',
         name: 'Google LLC,',
         designation: 'Principle Product Design',
         location: '417 Marion,New York\nUnited States'
     ),
     JobModel(
         icon: 'assets/icons/linkedin.png',
         name: 'Linkedin corp,',
         designation: 'Talent Acqusition Lead',
         location: '566 Eleanore Square,\nFrance'
     ),

   ];
 }}