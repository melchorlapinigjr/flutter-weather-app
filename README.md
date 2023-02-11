# flutter_weather_app

A weather forecasting app.

## Getting Started

PLEASE FOLLOW THIS GUIDE TO BE ABLE TO RUN THE APP.

## GENERAL INFORMATION
   
*State Management*: 
    The app uses Stacked State Management. 
    You can learn more about this plugin here: https://pub.dev/packages/stacked

*REST*:
    The app uses Dio plugin for API calls. Learn more here: https://pub.dev/packages/dio

*Accessing services such as Dialog, Snackbar, Navigation, etc.*:
    The app uses Get plugin. Learn more about this: https://pub.dev/packages/get

## GIT PROJECT BRANCH STRUCTURE

* Main - this is where all staging features/changes past the test and our final features/codes changes are merged for production build.
* Staging - where all our features added from dev will be merged for building test app.
* Development - this is where we make new branches for all new features/code changes to be added in our app.

## GENERATING FILES(CLASSES/SCRIPTS) NEEDED IN THIS APP

Stacked state management relies on stacked_generator(https://pub.dev/packages/stacked_generator) to generate the routing and the dependencies  for it to run. This makes
is easy for devs and avoid more boiler plates for running the app. This plugin works with build_runner (https://pub.dev/packages/build_runner).
To generate required classes/script just run this command: flutter pub run build_runner build --delete-conflicting-outputs

## What is Auth0?
  Auth0 is use for authenticating users inside our app.

* Add authentication with [multiple sources](https://auth0.com/docs/authenticate/identity-providers), either social identity providers such as **Google, Facebook, Microsoft Account, LinkedIn, GitHub, Twitter, Box, Salesforce** (amongst others), or enterprise identity systems like **Windows Azure AD, Google Apps, Active Directory, ADFS, or any SAML identity provider**.
* Add authentication through more traditional **[username/password databases](https://auth0.com/docs/authenticate/database-connections/custom-db)**.
* Add support for **[linking different user accounts](https://auth0.com/docs/manage-users/user-accounts/user-account-linking)** with the same user.
* Support for generating signed [JSON Web Tokens](https://auth0.com/docs/secure/tokens/json-web-tokens) to call your APIs and **flow the user identity** securely.
* Analytics of how, when, and where users are logging in.
* Pull data from other sources and add it to the user profile through [JavaScript Actions](https://auth0.com/docs/customize/actions).

**Why Auth0?** Because you should save time, be happy, and focus on what really matters: building your product.

## What is OpenWeather?
  OpenWeather is use for getting weather forecast in our app. To know more head over to: https://openweathermap.org/

* OpenWeather is a team of IT experts and data scientists that has been practising deep weather data science. For each point on the globe, OpenWeather provides historical, current and forecasted weather data via light-speed APIs. Headquarters in London, UK. 
