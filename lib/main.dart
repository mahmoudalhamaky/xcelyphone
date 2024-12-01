import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  static const String _title = 'Flutter sound Test';

  AudioPlayer player = AudioPlayer();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer player = AudioPlayer();

  Future playAudio(int x) async {
    try {
      await player.setAudioSource(AudioSource.asset('sound/$x.wav'));
      await player.play();
    } catch (e) {
      //print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    var widtha =MediaQuery.of(context).size.width.toInt();
    var heighta =MediaQuery.of(context).size.height.toInt();
    Expanded buildwidget(int i, {required Color color }){
      return Expanded(
        flex: 1,
        child: TextButton(
            style:TextButton.styleFrom(
              backgroundColor: color,
              textStyle: TextStyle(fontSize: 18),
             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: Text('play sound $i'),
            onPressed: () async {
              await playAudio(i);
            }),
      );
    }
     return Scaffold(
       appBar: AppBar(
         title: const Text('Sound Test'),
       ),
       body: Center(
         child: Column(
             mainAxisSize: MainAxisSize.max,
             crossAxisAlignment: CrossAxisAlignment.stretch,
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
                buildwidget( 1, color: Colors.red),
                buildwidget( 2, color: Colors.orange),
                buildwidget( 3, color: Colors.yellow),
                buildwidget( 4, color: Colors.green),
                buildwidget( 5, color: Colors.blue),
                buildwidget( 6, color: Colors.white),
                buildwidget( 7, color: Colors.brown),
             ]),
       ),
     );




  }
}
