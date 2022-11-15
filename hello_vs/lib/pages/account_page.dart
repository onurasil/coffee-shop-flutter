import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgest/account_page_card.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          "My Account",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Text(
              "Onur Asil",
              style: TextStyle(color: Colors.white, fontSize: 30),
            )),
            SizedBox(
              height: 30,
            ),
            AccountPageCard(icon: Icons.settings,title: "Account Settings",),
            SizedBox(
              height: 30,
            ),
            AccountPageCard(icon: Icons.shopping_basket,title: "My Orders",),
            SizedBox(
              height: 30,
            ),
            AccountPageCard(icon: Icons.help_center,title: "Help Center",),
            SizedBox(
              height: 30,
            ),
            AccountPageCard(icon: Icons.logout,title: "Logout",),
          ],
        ),
      ),
    );
  }
}


