import 'package:flutter/material.dart';

class HeaderWiget extends StatelessWidget {
  const HeaderWiget({super.key});
  final titleText = const TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  final subtitleText = const TextStyle(
    fontSize: 15,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(25.0),
      height: 130.0,
      decoration: BoxDecoration(color: Color.fromARGB(255, 41, 40, 39)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('CiberSecurity School', style: titleText),
              Text('Aprendamos juntos', style: subtitleText)
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: .1),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  icon: Icon(Icons.search, size: 28, color: Colors.white),
                  onPressed: () => {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
