// ignore_for_file: prefer_const_constructors, unused_import

import 'package:bangkok_fast_call/models/PoliceStationList.dart';
import 'package:bangkok_fast_call/views/station_detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePoliceUI extends StatefulWidget {
  const HomePoliceUI({super.key});

  @override
  State<HomePoliceUI> createState() => _HomePoliceUIState();
}

class _HomePoliceUIState extends State<HomePoliceUI> {
  List<PoliceStationList> policeStation = [
    PoliceStationList(
      stationName: 'ส.รฟ.ธนบุรี',
      stationAddr: '264/20 ถ.รถไฟ แขวงศิริราช เขตบางกอกน้อย กรุงเทพฯ 10700',
      stationPhone: '024113107',
      stationFax: '024113107',
      stationWeb: '',
    ),
    PoliceStationList(
      stationName: 'ส.รฟ.นพวงศ์',
      stationAddr: 'ถ.รถไฟ แขวงรองเมือง เขตปทุมวัน กรุงเทพฯ 10330',
      stationPhone: '022263495',
      stationFax: '022300674',
      stationWeb: '',
    ),
    PoliceStationList(
      stationName: 'ส.รฟ.มักกะสัน',
      stationAddr:
          '702/9 ถ.นิคมมักกะสัน แขวงมักกะสัน เขตราชเทวี กรุงเทพฯ 10400',
      stationPhone: '022540226',
      stationFax: '022540226',
      stationWeb: '',
    ),
    PoliceStationList(
      stationName: 'ส.รฟ.สุวรรณภูมิ',
      stationAddr:
          'ชั้น 3 สถานีรถไฟฟ้ามักกะสัน เลขที่ 1 ถ.อโศก-ดินแดง แขวงมักกะสัน เขตราชเทวี กรุงเทพฯ 10400',
      stationPhone: '021349007',
      stationFax: '021349007',
      stationWeb: '',
    ),
    PoliceStationList(
      stationName: 'สน.คลองตัน',
      stationAddr:
          '247 พัฒนาการ 25 ถ.พัฒนาการ แขวงสวนหลวง เขตสวนหลวง กรุงเทพฯ 10250',
      stationPhone: '023140041',
      stationFax: '023140310',
      stationWeb: 'http://khlongtan.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.คันนายาว',
      stationAddr: 'ถ.1 ถ.คู้บอน 33 แขวงรามอินทรา เขตคันนายาว กรุงเทพฯ 10230',
      stationPhone: '025109791',
      stationFax: '025101306',
      stationWeb: 'http://khannayao.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.โคกคราม',
      stationAddr: '777 ซ.นวลจันทร์ 36 แขวงนวลจันทร์ เขตบึงกุ่ม กรุงเทพฯ 10203',
      stationPhone: '025090666',
      stationFax: '025090666',
      stationWeb: 'http://www.khokkram-policestation.com',
    ),
    PoliceStationList(
      stationName: 'สน.จรเข้น้อย',
      stationAddr: '140 ถ.หลวงแพ่ง แขวงทับยาว เขตลาดกระบัง กรุงเทพฯ 10520',
      stationPhone: '023269991',
      stationFax: '023269281',
      stationWeb: 'http://chorakaenoi.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.จักรวรรดิ',
      stationAddr: '324 ถ.จักรวรรดิ แขวงจักวรรดิ เขตสัมพันธวงศ์ กรุงเทพฯ 10100',
      stationPhone: '022254094',
      stationFax: '022253884',
      stationWeb: 'http://chakrawat.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ฉลองกรุง',
      stationAddr:
          '40 ซอย 31 อาคารนิคมอุตสาหกรรมลาดกระบัง เขตลาดกระบัง กรุงเทพฯ 10520',
      stationPhone: '023261742',
      stationFax: '023261744',
      stationWeb: 'http://chalongkrung.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ชนะสงคราม',
      stationAddr: '74 ถ.จักรพงษ์ แขวงตลาดยอด เขตพระนคร กรุงเทพฯ 10200',
      stationPhone: '022822323',
      stationFax: '022823166',
      stationWeb: 'http://chanasongkhram.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.โชคชัย',
      stationAddr:
          '2115/1 ถ.ลาดพร้าว แขวงสะพานสอง เขตวังทองหลาง กรุงเทพฯ 10310',
      stationPhone: '025385249',
      stationFax: '025383779',
      stationWeb: 'http://chokchai.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ดอนเมือง',
      stationAddr: '210 ถ.เดชะตุงคะ แขวงสีกัน เขตดอนเมือง กรุงเทพฯ 10210',
      stationPhone: '025662916',
      stationFax: '025662916',
      stationWeb: 'http://donmueang.metro.police.go.th ',
    ),
    PoliceStationList(
      stationName: 'สน.ดินแดง',
      stationAddr: 'ถ.มิตรไมตรี 3 แขวง/เขต ดินแดง กรุงเทพฯ 10400',
      stationPhone: '022467706',
      stationFax: '022467706',
      stationWeb: 'http://dindaeng.metro.police.go.th ',
    ),
    PoliceStationList(
      stationName: 'สน.ดุสิต',
      stationAddr: '75 ถ.พระราม5 แขวงดุสิต เขตดุสิต กรุงเทพฯ 10300',
      stationPhone: '022415044',
      stationFax: '022412361',
      stationWeb: 'http://dusit.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ตลาดพลู',
      stationAddr:
          '45 ซ.วุฒากาศ 1 ถ.วุฒากาศ แขวงตลาดพลู เขตธนบุรี กรุงเทพฯ 10600',
      stationPhone: '024726622',
      stationFax: '024726109',
      stationWeb: 'http://talatphlu.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ตลิ่งชัน',
      stationAddr: '25 ถ.บรมราชชนนี แขวงฉิมพลี เขตตลิ่งชัน กรุงเทพฯ 10170',
      stationPhone: '024486360',
      stationFax: '024486761',
      stationWeb: 'https://talingchan.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.เตาปูน',
      stationAddr: '655 ถ.กรุงเทพ-นนทบุรี แขวง/เขตบางซื่อ กรุงเทพฯ 10800',
      stationPhone: '025856101',
      stationFax: '025856102',
      stationWeb: 'https://taopoonpolice.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ทองหล่อ',
      stationAddr:
          '800 ซอยสุขุมวิท 55 (ทองหล่อ) แขวงคลองตันเหนือ เขตวัฒนา กรุงเทพฯ 10110',
      stationPhone: '023818853',
      stationFax: '023902254',
      stationWeb: 'http://thonglor.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ท่าข้าม',
      stationAddr: '277 ถ.ท่าข้าม แขวงแสมดำ เขตบางขุนเทียน กรุงเทพฯ 10150',
      stationPhone: '024162841',
      stationFax: '024151574',
      stationWeb: 'http://thakham.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ท่าพระ',
      stationAddr: '1310/9 ซ.จรัญฯ3 แขวงท่าระ เขตบางกอกใหญ่ กรุงเทพฯ 10600',
      stationPhone: '024578662',
      stationFax: '024576591',
      stationWeb: 'http://thapra.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ท่าเรือ',
      stationAddr: '229 ถ.อาจณรงค์ แขวงคลองเตย เขตคลองเตย กรุงเทพฯ 10110',
      stationPhone: '022488888',
      stationFax: '022498891',
      stationWeb: 'http://www.tharueametropolice.com',
    ),
    PoliceStationList(
      stationName: 'สน.ทุ่งครุ',
      stationAddr: '10 ซ.ประชาอุทิศ 93 แขวงทุ่งครุ เขตทุ่งครุ กรุงเทพฯ 10140',
      stationPhone: '024261991',
      stationFax: '024261112',
      stationWeb: 'http://thungkhru.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ทุ่งมหาเมฆ',
      stationAddr: '506 ถ.สวนพลู แขวงทุ่งมหาเมฆ เขตสาธร กรุงเทพฯ 10120',
      stationPhone: '022873004',
      stationFax: '022873007',
      stationWeb: 'http://thungmahamek.metro.police.go.th',
    ),
    PoliceStationList(
      stationName: 'สน.ทุ่งสองห้อง',
      stationAddr:
          '444 ถ.วิภาวดีรังสิต แขวงตลาดบางเขน เขตหลักสี่ กรุงเทพฯ 10210',
      stationPhone: '025746465',
      stationFax: '025751660',
      stationWeb: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'สายด่วน สถานีตำรวจในสังกัดกทม.',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Image.asset(
              'assets/images/police.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: policeStation.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StationDetailUI(
                          policeStationList: policeStation[index],
                        ),
                      ),
                    );
                  },
                  title: Text(
                    policeStation[index].stationName,
                    style: GoogleFonts.kanit(),
                  ),
                  subtitle: Text(
                    'เบอร์โทร: ' + policeStation[index].stationPhone,
                    style: GoogleFonts.kanit(),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}
