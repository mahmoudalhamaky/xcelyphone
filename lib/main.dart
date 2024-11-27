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
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sound Test'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text('play sound 1'),
                  onPressed: () async {
                    await playAudio(1);
                    // print(playAudio());
                  }),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange)),
                  child: Text('play sound 2'),
                  onPressed: () async {
                    await playAudio(2);
                    // print(playAudio());
                  }),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber)),
                  child: Text('play sound 3'),
                  onPressed: () async {
                    await playAudio(3);
                    // print(playAudio());
                  }),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  child: Text('play sound 4'),
                  onPressed: () async {
                    await playAudio(4);
                    // print(playAudio());
                  }),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent)),
                  child: Text('play sound 5'),
                  onPressed: () async {
                    await playAudio(5);
                    // print(playAudio());
                  }),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purpleAccent)),
                  child: Text('play sound 6'),
                  onPressed: () async {
                    await playAudio(6);
                    // print(playAudio());
                  }),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.brown)),
                  child: Text('play sound 7'),
                  onPressed: () async {
                    await playAudio(7);
                    // print(playAudio());
                  }),
            ]),
      ),
    );
  }
}
