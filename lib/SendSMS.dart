import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twilio_flutter/twilio_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SMS {
  late TwilioFlutter twilioFlutter;

  SMS() {
    twilioFlutter = TwilioFlutter(
        accountSid: dotenv.env['TWILIO_ACCOUNT_SID']!,
        // replace *** with Account SID
        authToken: dotenv.env['TWILIO_AUTH_TOKEN']!,
        // replace xxx with Auth Token
        twilioNumber: dotenv
            .env['TWILIO_PHONE_NUMBER']! // replace .... with Twilio Number
        );
  }

  void sendSMS(String number, BuildContext context) async {
    twilioFlutter.sendSMS(
        toNumber: number,
        messageBody:
            "EMERGENCY - Your friend needs help and he might be in danger. Try to make contact immediately or call the emergency services"
    );
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Container(
              alignment: Alignment.center,
              child: const Text('SMS sent!'),
            )
        )
    );
  }
}

// 'REMOVED_SECRET'

    /*WatchLocation loc = WatchLocation();
    print("Hello");
    LocationData ld = await loc.determinePosition();

    Location location = Location();
    location.enableBackgroundMode(enable: true);
    print("Hello!");
    LocationData ld = await location.getLocation();
    print("By!");
    print(ld.latitude);
*/