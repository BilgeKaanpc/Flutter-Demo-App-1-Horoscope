import 'package:flutter/material.dart';
import 'package:horoscope_app/model/horoscope.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetails extends StatefulWidget {
  final Horoscope horoscopeDetail;
  const HoroscopeDetails({required this.horoscopeDetail, super.key});

  @override
  State<HoroscopeDetails> createState() => _HoroscopeDetailsState();
}

class _HoroscopeDetailsState extends State<HoroscopeDetails> {
  Color appBarColor = Colors.pink;
  late PaletteGenerator _generator;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FindColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              pinned: true,
              backgroundColor: appBarColor,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  widget.horoscopeDetail.bigImage,
                  fit: BoxFit.cover,
                ),
                title: Text(widget.horoscopeDetail.name + " Details"),
                centerTitle: true,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Text(widget.horoscopeDetail.detal * 2),
                ),
              ),
            )
          ],
        ));
  }

  void FindColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage(widget.horoscopeDetail.bigImage));
    appBarColor = _generator.dominantColor!.color;
    setState(() {});
  }
}
