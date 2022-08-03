import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/search_bg.png',
          ),
          fit: BoxFit.fill

        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fast Search',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white),
            ),
            Text('You can search quickly for\nthe job you want',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.white,
                  height: 2
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Image.asset('assets/icons/search.png',
                    height: 10,
                    width: 10,
                    color: Colors.grey ,
                  ),
                  SizedBox(width: 10,),
                  Text('Search',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        color: Colors.black.withOpacity(.5),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
