import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_vs/pages/account_page.dart';
import 'package:hello_vs/util/coffee_tile.dart';
import 'package:hello_vs/util/coffee_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of coffee types
  final List coffeeType = [
    //[coffee type,isSelected]
    ["Espresso Bar",true,],
    ["Brew Bar",false,],
    ["Dünya Çayları",false,],
    ["Bitki Çayları",false,]

  ];
  
  //user tapped on coffee types

  void coffeeTypeSelected (int index){
    setState(() {
      //this for loop makes every selection false
      for(int i =0;i<coffeeType.length;i++){
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu,color: Colors.grey[900]),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Container(
              alignment: Alignment.center,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image(image: AssetImage("lib/images/grove_logo.JPG")),
             ),
          ),
          Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(icon: Icon(Icons.person),color: Colors.grey[900],onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => AccountPage()));
            print("İcon button calısıyor");
          })
        )],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "",),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),
        label: "",),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),
        label: "",),
        

      ]),
      body: Column(children: [
        //find the best coffee for you
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("Find the best coffee for you",style: GoogleFonts.bebasNeue(
            fontSize: 60
          )),
        ),
        SizedBox(height: 25,),


        //search bar 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Find your coffee ...",
              focusedBorder: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade600)),
            ),
          ),
        ),
        SizedBox(height: 25,),
        //horizantal listview of coffee types 
        Container(
          height: 40,
          child: ListView.builder(
            itemCount: coffeeType.length,
            itemBuilder: ((context, index) {
              return CoffeeType(
                coffeeType: coffeeType[index][0],
                isSelected: coffeeType[index][1],
                onTap: (){
                  coffeeTypeSelected(index);
                });
            }),
            scrollDirection: Axis.horizontal,
           ),
        ),


        //horizontal listview of coffee tiles
        Expanded(child: ListView(
          scrollDirection: Axis.horizontal, //ilerleme yönü
          children: [
            CoffeeTile(coffeeImageName: "coffee1.jpg",coffeeName:"Espresso",coffeePrice: "22",),
            CoffeeTile(coffeeImageName: "coffee2.jpg",coffeeName:"Americano/Iced",coffeePrice: "27",),
            CoffeeTile(coffeeImageName: "coffee3.jpg",coffeeName:"RedEye",coffeePrice: "35",),
            CoffeeTile(coffeeImageName: "coffee3.jpg",coffeeName:"Espresso Macchiato",coffeePrice: "25",),

         
        ],)),


        
      ],)
    );
  }
}