// ignore_for_file: prefer_const_constructors, unused_element

import 'package:bangkok_fast_call/models/policestationlist.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class StationDetailUI extends StatefulWidget {
  PoliceStationList? policeStationList;

  StationDetailUI({super.key, this.policeStationList});

  @override
  State<StationDetailUI> createState() => _StationDetailUIState();
}

class _StationDetailUIState extends State<StationDetailUI> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'สายด่วน สถานีตำรวจในสังกัดกทม. (' +
              widget.policeStationList!.stationName +
              ')',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.01,
                ),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.store,
                    color: Colors.green,
                  ),
                  title: Text(
                    'ชื่อสถานีตำรวจ : ' + widget.policeStationList!.stationName,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey[400],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.01,
                ),
                child: ListTile(
                  onTap: () {
                    _makePhoneCall(widget.policeStationList!.stationPhone);
                  },
                  leading: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.green,
                  ),
                  title: Text(
                    'เบอร์โทร : ' + widget.policeStationList!.stationPhone,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey[400],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.01,
                ),
                child: ListTile(
                  onTap: () {
                    _makePhoneCall(widget.policeStationList!.stationPhone);
                  },
                  leading: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.green,
                  ),
                  title: Text(
                    'เบอร์โทรสาร : ' + widget.policeStationList!.stationFax,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey[400],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.01,
                ),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                        Uri.parse(widget.policeStationList!.stationWeb));
                  },
                  leading: Icon(
                    FontAwesomeIcons.globe,
                    color: Colors.green,
                  ),
                  title: Text(
                    'Website สถานีตำรวจ : ' +
                        widget.policeStationList!.stationWeb,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey[400],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
