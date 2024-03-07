import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class upper_section extends StatelessWidget {
  const upper_section({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height / 10,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Kochi',
                          style: GoogleFonts.roboto(textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),)
                        ),
                      ],
                    ),
                    Text(
                      'Today,Oct 18 5:10',
                      style:GoogleFonts.puritan(
                     textStyle:    TextStyle(

                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      )
                    ),
                  ],
                ),
                Icon(
                  Icons.stacked_line_chart_sharp,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '13°',
                      style: GoogleFonts.pacifico(textStyle: TextStyle( color: Colors.white,
                          fontSize: 140,))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, top: 12),
                    child: Column(
                      children: [
                        Icon(
                          Icons.sunny,
                          size: 90,
                        ),
                        Text(
                          "It's Sunny",
                          style: GoogleFonts.akayaTelivigala(textStyle: TextStyle(color: Colors.black, fontSize: 20),)
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
