import 'package:flutter/material.dart';

class AccountPageCard extends StatelessWidget {

  final IconData icon;
  final String title;

  AccountPageCard({required this.icon,required this.title});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
            width: 1.0,
            style: BorderStyle.solid
          ),
        
          color: Colors.black54,
          borderRadius: BorderRadius.all(Radius.circular(16))
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.orange,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.arrow_right,color: Colors.white,) )
        ],
      ),
    );
  }
}