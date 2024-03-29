import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'model_';

class forecast_bar extends StatelessWidget {
  Weather? weatherdata;
   forecast_bar({super.key,this.weatherdata});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
         height: MediaQuery.of(context).size.height/4.25,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 6,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.grey[300],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Weather Today',
                  style: GoogleFonts.archivo(
                      textStyle:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w700)),

                  // TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        Icons.sunny_snowing,
                        size: 50,
                        color: Color.fromARGB(255, 255, 209, 2),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '05:00 AM',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600]),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '20°',
                        style: GoogleFonts.mcLaren(
                            textStyle: TextStyle(
                          fontSize: 33,
                          letterSpacing: -3,
                        )),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        Icons.sunny_snowing,
                        size: 50,
                        color: Color.fromARGB(255, 255, 209, 2),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '05:00 AM',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600]),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '20°',
                        style: GoogleFonts.mcLaren(
                            textStyle: TextStyle(
                          fontSize: 33,
                          letterSpacing: -3,
                        )),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        Icons.sunny_snowing,
                        size: 50,
                        color: Color.fromARGB(255, 255, 209, 2),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '05:00 AM',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600]),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '20°',
                        style: GoogleFonts.mcLaren(
                            textStyle: TextStyle(
                          fontSize: 33,
                          letterSpacing: -3,
                        )),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        Icons.sunny_snowing,
                        size: 50,
                        color: Color.fromARGB(255, 255, 209, 2),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '05:00 AM',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600]),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '20°',
                        style: GoogleFonts.mcLaren(
                            textStyle: TextStyle(
                          fontSize: 33,
                          letterSpacing: -3,
                        )),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
