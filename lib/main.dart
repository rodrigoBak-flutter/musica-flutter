import 'package:flutter/material.dart';
import 'package:musica/src/models/audioplayer.dart';
import 'package:musica/src/pages/music_player.dart';
import 'package:musica/src/theme/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new AudioPlayerModel())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Music Player',
          theme: miTema,
          home: MusicPlayerPage()),
    );
  }
}
