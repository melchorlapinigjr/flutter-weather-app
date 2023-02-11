

import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/ui/widgets/widgets.dart';

class UserProfileView extends StatelessWidget {
  final UserProfile userProfile;

  const UserProfileView({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.lightBlueAccent,
      width: double.infinity,
      child: Column(children: [
        if (userProfile.pictureUrl != null)
          Image.network(
            userProfile.pictureUrl.toString(),
            width: 64,
            height: 64,
          ),
        sizedBoxHeight8(),
        MyHeadlineSmall(
          text: userProfile.name ?? userProfile.nickname ?? 'No name.',
        ),
        sizedBoxHeight4(),
        MyBodyMediumText(
            text: userProfile.websiteUrl != null
                ? userProfile.websiteUrl.toString()
                : 'No website url available'),
      ]),
    );
  }
}
