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

//berkutat serer dulu ya sehari ini, lnjut 2hr, lnjut hr ke-3, lagi, lagi dong, urus traccar, lnjt traaccar, nyobain lokal, nambah server lg, suruh nambah server wait ya.. muda2an 2malem ini selesai. 
//sudah sih CACTI, bikin kuberneter dulu deh, akhir taun start kubernetes, kubelet kok kebelet
//lagi, lagi. ngajar anak sma 2 hari ini jumta sabtu. masih lanjut, lagi, dan lagi... terus.. teruss.... lanjut.. lagi dong...