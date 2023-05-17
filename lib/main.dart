import 'package:flutter/material.dart';
import 'package:iamkenya/customAppBar.dart';
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
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.green.withOpacity(1),
        width: MediaQuery.of(context).size.width*0.4,
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10,),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: (){},
                child: const Text(
                  "Join Us",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
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
              const SizedBox(height: 20,),
              TextButton(
                onPressed: (){},
                child: const Text(
                  "Charity",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              TextButton(
                onPressed: (){},
                child: const Text(
                  "FAQ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(
                        Colors.pink.withOpacity(0.8)
                    ),
                    backgroundColor: MaterialStateProperty.all(
                        Colors.orange.withOpacity(0.5)
                    ),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                    ),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    )
                ),
                onPressed: (){

                },
                child: const Text(
                  "Donate",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          const CustomAppBAr(),
          // Bible verse container
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            width: size.width*0.7,
            child: const Center(
              child: Text(
                "Blessed is the hand that giveth than the hand that receiveth...",
                overflow: TextOverflow.visible,
                softWrap: true,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          // Slideshow container
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 50),
            width: MediaQuery.of(context).size.height*0.8,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DestinationCouresel(),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          // Donate Section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: size.width*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Text(
                      "The Smallest Act of giving is worth more than grandest intention",
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.visible,
                      softWrap: true,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //Mobile money donations
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  width: size.width*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Image.asset("assets/images/till-number.jpg"),
                    ],
                  ),
                ),

              ],
            ),
          ),




          // Footer section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                const Text(
                  "To our Supporters",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "I am beyond grateful to all our supporters and sponsors for all of your contributions. Your generosity and support have been instrumental in helping us make a difference in the lives of those in need. Whether it's through your donations, your time and effort, or your willingness to spread the word about our cause, you have made a tremendous impact.Without you, we would not be able to achieve our mission of making the world a better place. Every penny you have donated, every hour you have volunteered, every word you have shared has helped us get one step closer to our goal.So, from the bottom of my heart, I want to say thank you. Thank you for your kindness, your compassion, and your unwavering support. You are the true heroes in this story, and I am honored to have you by my side.Together, we can continue to make a positive impact on the world, and I look forward to what the future holds.",
                  textAlign: TextAlign.justify,
                  softWrap: true,

                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Image.asset("assets/images/WHO.png", height: 200, width: 200,),
                    Image.asset("assets/images/SHOFCO.png", height: 200, width: 200,),
                    Image.asset("assets/images/wfp-logo.png", height: 200, width: 200,),
                    const SizedBox(width: 40,),
                    Image.asset("assets/images/redcross.png", height: 200, width: 200,),
                    const SizedBox(width: 40,),
                    Image.asset("assets/images/SAF.jpg", height: 200, width: 200,),

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

