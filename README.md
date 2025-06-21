# Athlete Alert

Athlete Alert is a Flutter safety app designed for athletes to help them exercise more securely. 

Before starting an activity, users can set a timer within the app. If the timer isn't stopped before it runs out, the app automatically sends an SMS alert to the athlete’s pre-defined emergency contacts with the location.

The app also features a map-based system where athletes can drop pins to indicate where they are working out. These markers are visible to other users of the app, making it easy to see where athletic activity is taking place in real time.

The Twilio service is used for SMS messaging and Firebase for real-time data synchronization.

The Athlete Alert app is multi-platform, with a shared codebase that supports both Android phones and Wear OS smartwatches.

From their watch, athletes can easily set and manage the timer, manually trigger the SOS alert, view the map and their current location.
Additionally, if the timer on the watch runs out without being stopped, a text message alert is automatically sent to their emergency contacts.

<p align="center">
<img src="https://user-images.githubusercontent.com/60558136/233142126-8c2c22b1-239b-4088-9669-79a42388c5ef.jpg" alt="Android App Screenshot" width="400"/>
&nbsp;&nbsp;&nbsp;
<img src="https://user-images.githubusercontent.com/60558136/233143520-9d928334-ecce-4ca4-b39b-ebd76abab96d.png" alt="Smartwatch App Screenshot" width="350"/>
</p>

## Minimum Viable Product (MVP) Demo

https://github.com/user-attachments/assets/e48cc559-a7c9-4762-adcf-c83644abe1b9

## Android App Demo

A walkthrough of the app's functionalities:

https://github.com/user-attachments/assets/5892df22-d560-46f9-bb72-f7140e9ca5eb


## Wear OS Watch App Demo

This demo showcases logging in, interacting with the map, accessing the current location, setting and managing the timer, and sending an SOS message.

https://github.com/user-attachments/assets/4434773a-618b-4019-8fc2-bbe9baeae88e


## Emergency Alert from your watch

In the following video, an athlete manually sends an SMS alert from their smartwatch. The alert is then received as a text message on the phone of the designated emergency contact, such as a family member or friend.

https://github.com/user-attachments/assets/b5e57297-6639-47f3-9ca1-1fedf9c1cc93
