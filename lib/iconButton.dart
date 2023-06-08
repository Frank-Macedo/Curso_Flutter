import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
var _volume = 0.0;
class IconButtonExample extends StatefulWidget {


  @override
  State<IconButtonExample> createState() => _IconButtonExampleState();
}

class _IconButtonExampleState extends State<IconButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            iconSize:50 ,
            color: Color.fromARGB(210, 27, 123, 0),
            icon: const Icon(CryptoFontIcons.ETC),
            tooltip: 'Increase volume by 10',
            onPressed: () {
              setState(() {
                _volume += 10;
              });
            },
          ),
          Text('Volume : $_volume'),
        ],
      ),
    );
  }
}
