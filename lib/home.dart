import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'fridge_inventory.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<ProfileScreen>(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                height: 300.0,
                width: 200.0,
                padding: const EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Center(
                  child: Image.asset('asset/images/fridge.png'),
                ),
              ),
              Text(
                "Welcome ${FirebaseAuth.instance.currentUser!.email}!",
              ),
            ElevatedButton(
              onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const FridgeInventory()));
              },
              child: const Text(
                'Fridge inventory page',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
