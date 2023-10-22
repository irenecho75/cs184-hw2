import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

class FridgeInventory extends StatelessWidget {
   const FridgeInventory({super.key});
    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
          actions: [
            ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Back',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
            ),
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
        body: const Center(
            child: Column(
              children: [
                Text(
                  'Fridge inventory page',
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                )
              ]
            ),
        ),
      );
    }
}