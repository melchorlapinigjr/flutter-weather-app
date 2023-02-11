# flutter_weather_app

A weather forecasting app.

## Getting Started

PLEASE FOLLOW THIS GUIDE TO BE ABLE TO RUN THE APP.

GENERAL INFORMATION
   
State Management: 
    The app uses Stacked State Management. 
    You can learn more about this plugin here: https://pub.dev/packages/stacked

REST:
    The app uses Dio plugin for API calls. Learn more here: https://pub.dev/packages/dio

Accessing services such as Dialog, Snackbar, Navigation, etc.:
    The app uses Get plugin. Learn more about this: https://pub.dev/packages/get

GIT PROJECT BRANCH STRUCTURE

1. Main - this is where all staging features/changes past the test and our final features/codes changes are merged for production build.
2. Staging - where all our features added from dev will be merged for building test app.
3. Development - this is where we make new branches for all new features/code changes to be added in our app.

GENERATING CLASSES NEEDED FOR THE APP

Stacked state management relies on stacked_generator(https://pub.dev/packages/stacked_generator) to generate the routing and the dependencies  for it to run. This makes
is easy for devs and avoid more boiler plates for running the app. This plugin works with build_runner (https://pub.dev/packages/build_runner).
To generate required classes/script just run this command: flutter pub run build_runner build --delete-conflicting-outputs