import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            width: 412,
            height: 892,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 12,
                  offset: Offset(0, 4),
                ),
              ],
              border: Border.all(width: 8)
            ),
            child: buildContent(),
          ),
        )
    );
  }

  Widget buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'DevQuiz',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 48,
              fontWeight: FontWeight.w600,
              height: 70 / 48,
              letterSpacing: 0.01,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 395,
            height: 66,
            child: const Text(
              'Where thousand of developers \nacting their tech journey',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w200,
                fontSize: 24,
                height: 1.0,
                letterSpacing: 0.0,
                color: Color(0xFF1F1F1F),
              )
            ),
          ),
          const SizedBox(height: 50),
          Image.asset(
            'assets/image/4200_3_03.jpg',
            height: 180,
          ),
          const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            width: 335,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xFF707070), width: 1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icon/google.png',
                  height: 28.95,
                  width: 28.95,
                ),
                const SizedBox(width: 12),
                const Text(
                  'Continue with Google',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Outfit',
                    height: 1.0,
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}