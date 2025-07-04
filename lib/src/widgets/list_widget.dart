// ignore: file_names
import 'package:ciber_school_a/src/pages/detail_page.dart';
import 'package:ciber_school_a/src/pages/detail_page_adult.dart';
import 'package:ciber_school_a/src/pages/detail_page_young.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  double screenSize = 0;
  final titleStyleText = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);

  final subtitleStyleText = const TextStyle(
      fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text(
            'Conoceras sobre:',
            style: titleStyleText,
          ),
          SizedBox(
            height: screenSize * .05,
          ),
          Row(
            children: [
              bloquesTemas("img_1.jpeg", 'Seguridad'),
              SizedBox(
                width: screenSize * .03,
              ),
              bloquesTemas("img_2.jpeg", 'Protegerse'),
              SizedBox(
                width: screenSize * .03,
              ),
              bloquesTemas("img_3.jpeg", 'Cuidar al resto'),
            ],
          ),
          const Divider(
            height: 30,
            color: Colors.white,
            thickness: .5,
          ),
          Text(
            'Segmentos',
            style: titleStyleText,
          ),
          SizedBox(
            height: 20,
          ),
          celdaSegmentos('Niños (8 a 11 años)', "img_1.jpeg"),
          celdaSegmentos('Jovenes (12 a 18 años)', "img_2.jpeg"),
          celdaSegmentos('Adultos Mayores (65 años +)', "img_3.jpeg")
        ],
      ),
    );
  }

  Widget celdaSegmentos(String segmento, String image) {
    return GestureDetector(
      onTap: () => {
        if (segmento == 'Niños (8 a 11 años)')
          {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (context) => DetailPage()))
          },
        if (segmento == 'Jovenes (12 a 18 años)')
          {
            Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => DetailPageYoung()))
          },
        if (segmento == 'Adultos Mayores (65 años +)')
          {
            Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => DetailPageAdult()))
          }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 35),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(66, 109, 108, 108)),
        height: 65,
        child: Row(
          children: [
            Image.asset('assets/$image',
                width: screenSize * .31, height: 110, fit: BoxFit.cover),
            const SizedBox(
              width: 15,
            ),
            Text(
              segmento,
              style: subtitleStyleText,
            )
          ],
        ),
      ),
    );
  }

  Column bloquesTemas(String image, String title) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: screenSize * .31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: subtitleStyleText,
        )
      ],
    );
  }
}
