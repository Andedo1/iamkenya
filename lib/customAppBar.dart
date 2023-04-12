import 'package:flutter/material.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          MediaQuery.of(context).size.width > 720?
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: 20,),
              TextButton(
                onPressed: (){},
                child: const Text(
                  "Join Us",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,)
                  ,),
              ),
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
              const SizedBox(width: 20,),
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
          ) :
          IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
