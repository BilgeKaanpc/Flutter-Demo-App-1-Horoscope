import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horoscope_app/horoscope_detail.dart';
import 'package:horoscope_app/model/horoscope.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope pickedHoroscope;
  const HoroscopeItem({required this.pickedHoroscope, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) =>
                      HoroscopeDetails(horoscopeDetail: pickedHoroscope)));
            },
            leading: Image.asset(
              pickedHoroscope.image,
              width: 64,
              height: 64,
            ),
            title: Text(pickedHoroscope.name),
            subtitle: Text(pickedHoroscope.date),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
