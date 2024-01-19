import 'package:flutter/material.dart';
import 'package:horoscope_app/data/strings.dart';
import 'package:horoscope_app/horoscope_item.dart';
import 'package:horoscope_app/model/horoscope.dart';

// ignore: must_be_immutable
class HoroscopeList extends StatelessWidget {
  late List<Horoscope> allHoroscope;
  HoroscopeList() {
    allHoroscope = CreateData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Horoscope List"),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: ListView.builder(
            itemCount: allHoroscope.length,
            itemBuilder: (context, index) {
              return HoroscopeItem(pickedHoroscope: allHoroscope[index]);
            },
          ),
        ),
      ),
    );
  }

  List<Horoscope> CreateData() {
    List<Horoscope> current = [];
    for (int i = 0; i < 12; i++) {
      var name = Strings.BURC_ADLARI[i];
      var date = Strings.BURC_TARIHLERI[i];
      var detail = Strings.BURC_GENEL_OZELLIKLERI[i];
      var smallImage = "Images/${name.toLowerCase()}${i + 1}.png";
      var bigImage = "Images/${name.toLowerCase()}_buyuk${i + 1}.png";
      Horoscope currentHoroscope = Horoscope(
          name: name,
          date: date,
          detal: detail,
          image: smallImage,
          bigImage: bigImage);
      current.add(currentHoroscope);
    }
    return current;
  }
}
