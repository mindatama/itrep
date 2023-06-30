// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:bwashamo_apps/theme.dart';

class NetworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Networks aja kasih grid jos',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: backgroundColor1,
      body: GridView.count(crossAxisCount: 2)
    );
  }
}
//ngejar 15 jun masih devops
//ngejar 16 jun masih devops (nutanix)
//ngejar 17 jun belum nge progress apa apa
//ngejar 18 jun kerja dulu
//ngejar 19 jun ikut lomba, menang cuy juara 2
//20 jun mulai nyatet nutanix, bismillah
//21 jun lupa buat
//22 jun hari kamis, sepertinya agak luang
//23 jun malah  nge scroll duh
//24 jun bisa dong. gada penghalang!!!!
//25 jun off malah scroll
//26 jun kaga ngapa2in, asem
//27 jun scroll aja,hah
//28 jun keknya bisa deh
//29 jun malah scroll
//masih lanjut docker lagi
//lagi, lagi, lagi, lagi, lagi.lagi
//lagi, sekarang fokus nutanix.. lagi. membukalagi, lagi. lagi, lagi. lagi, lagi