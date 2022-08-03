import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(10),
        height: 100,
        child: Row(
          children: [
            Expanded(
                flex: 4,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Welcome home',
                    style: GoogleFonts.lato(fontSize: 16),),
                    Text('Annie Bryant',
                    style: GoogleFonts.lato(fontSize: 28,fontWeight: FontWeight.bold),)
                  ],
                ) ),
            Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Transform.rotate(
                          angle: -120,
                          child: Icon(Icons.notifications_none,size: 35,),
                        ),


                        ClipOval(
                          child: Image.asset('assets/images/avatar.png',width: 60,),
                        )

                      ],
                    ),
                    Positioned(
                        left: 20, top: 12,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4)
                          ),
                        )),

                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
