import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  
  final String coffeeImageName;
  final String coffeeName;
  final String coffeePrice;
  


  const CoffeeTile({required this.coffeeImageName,required this.coffeeName,required this.coffeePrice,});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.only(left:25.0,bottom: 25.0),
            child: Container(
              padding: EdgeInsets.all(12),
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black54,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //coffee image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset("lib/images/$coffeeImageName")),
                    //coffee name
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(coffeeName,style: TextStyle(fontSize: 17),),
                        SizedBox(height: 4,),
                        //Text(extraOption,style: TextStyle(color: Colors.grey[500],),),
                      ],
                    ),
                  ),
                  //price
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("\₺"+coffeePrice,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      Container(
                        padding: EdgeInsets.all(4),
                        child: Icon(Icons.add),
                        decoration: BoxDecoration(
                          color: Colors.orange[900],
                          borderRadius: BorderRadius.circular(6)),
                        )
                    ],),
                  )
                    
                ],
              ),
            ),
          );
  }
}