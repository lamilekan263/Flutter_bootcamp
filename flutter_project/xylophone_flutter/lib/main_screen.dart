import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Container(
        child: Column(
           
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            customContainer(color:Colors.red, num: 1),
            customContainer(color:Colors.blue, num: 2),
            customContainer(color:Colors.purple, num: 3),
            customContainer(color:Colors.teal, num: 4),
            customContainer(color:Colors.green, num: 5),
            customContainer(color:Colors.yellow, num: 6),
            customContainer(color:Colors.grey,num: 7)
          ],
        ),
      ),
    ),
    );
  }

  Widget customContainer({num,color}) {
    return GestureDetector(
            onTap: () {
              setState(() {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  "assets/audios/note$num.wav",
                );
              });
            },
            child: Container(
              color: color,
             width: double.infinity,
              height:80.0,
            ),
          );
  }
}



