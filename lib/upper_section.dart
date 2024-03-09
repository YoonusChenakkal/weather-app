import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import 'model_';

class upper_section extends StatefulWidget {
  Weather? weatherdata;
  upper_section({this.weatherdata, super.key});

  @override
  State<upper_section> createState() => _upper_sectionState();
}

class _upper_sectionState extends State<upper_section> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _updateTime();
  }

  String fo_date = DateFormat("MMMM, dd").format(DateTime.now());

  String fo_time = DateFormat("HH:mm a").format(DateTime.now());

  void _updateTime() {
    setState(() {
      fo_date = DateFormat("MMMM, dd").format(DateTime.now());
      fo_time = DateFormat("hh:mm a").format(DateTime.now());
    });

    // Schedule the next update after one second
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  updateWeather() {
    setState(() {
      widget.weatherdata;
    });
  }

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
                        widget.weatherdata == null
                            ? CircularProgressIndicator()
                            : Text(widget.weatherdata!.location.name,
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                      ],
                    ),
                    Text(fo_date + ' ' + fo_time,
                        //'Today,Oct' 18 5:10',
                        style: GoogleFonts.puritan(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        )),
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
              height: MediaQuery.of(context).size.height / 4.5,
              width: MediaQuery.of(context).size.width,
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 0),
                    child: widget.weatherdata == null
                        ? SizedBox()
                        : Text(
                            widget.weatherdata!.current.tempC
                                    .toInt()
                                    .toString() +
                                '°',
                            style: GoogleFonts.rocknRollOne(
                                textStyle: TextStyle(
                              letterSpacing: -8,
                              color: Colors.white,
                              fontSize: 100,
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, top: 12),
                    child: Column(
                      children: [
                        Lottie.network(height: 100,
                            'https://lottie.host/db32edef-17b9-4ad6-bbc2-b2c76dc6ee6c/WcBsOq0Bwx.json'),
                        //Icons.wb_sunny_outlined,color: Colors.white,

                        Text("It's Cloudy",
                            style: GoogleFonts.akayaTelivigala(
                              textStyle:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ))
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
