import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'forgot-password.dart';
import 'package:geolocator/geolocator.dart';

final user = FirebaseAuth.instance.currentUser!;

Future<void> sendPhoneNum(String number) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("phones/${user.uid}");
  await ref.set({
    "number": number,
    "user": user.uid,
  });
}

Future<String> readPhoneNum(String userId) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("phones/$userId");
  DatabaseEvent event = await ref.once();
  if (event.snapshot.value == null) {
    return "";
  }
  Map data = event.snapshot.value as Map;
  return data['number'];
}

class EnterPhoneNum extends StatefulWidget {
  @override
  _EnterPhoneNumState createState() => _EnterPhoneNumState();
}

class _EnterPhoneNumState extends State<EnterPhoneNum> {
  String phoneNumber = '';

  void _storePhoneNumber(String number) {
    setState(() {
      phoneNumber = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(47, 36, 255, 1),
        title: const Text('Emergency Contact Information'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: 'Enter phone number',
                ),
                onChanged: (value) {
                  _storePhoneNumber(value);
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                print("---------------- $phoneNumber");
                sendPhoneNum(phoneNumber);
                Navigator.pop(context);
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromRGBO(47, 36, 255, 1), // Background color
              ),
              child: const Text('Save Emergency Contact'),
            ),
          ],
        ),
      ),
    );
  }
}
