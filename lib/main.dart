import 'package:flutter/material.dart';
import 'package:iamkenya/destination_couresel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kenya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '#Tuinuane Foundation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "#Tuinuane Foundation",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(width: 20,),
                    TextButton(onPressed: (){}, child: const Text("Donate", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),)),
                    const SizedBox(width: 20,),
                    TextButton(
                      onPressed: (){},
                      child: const Text(
                          "About Us",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    TextButton(onPressed: (){}, child: const Text("Charity", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),)),
                    const SizedBox(width: 20,),
                    TextButton(onPressed: (){}, child: const Text("FAQ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),)),

                  ],
                )
              ],
            ),
          ),
          // Bible verse container
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 50),
            height: 50,
            child: Center(
              child: const Text(
                "Blessed is the hand that giveth than the hand that receiveth...",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          // Slideshow container
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                DestinationCouresel(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

