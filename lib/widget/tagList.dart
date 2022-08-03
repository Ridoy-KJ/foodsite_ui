import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _taglist = [
    '  All  ',
    '  ⚡    Popular',
    '  ⭐   Featured',
    '  💡   Custom'
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      //padding: EdgeInsets.all(10),
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context,index) => SizedBox(
            width: 30,
          ),
          itemCount: _taglist.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selected == index ? Color(0xffbaedf0) : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: selected != index ? Color(0xff01b2b8) : Color(0xffbaedf0),
                    width: 1,
                  )
                ),
                child: Text(_taglist[index],
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.black.withOpacity(.7)
                ),),
              ),
            );
          },
      ),
    );
  }
}
