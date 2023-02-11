import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/ui/screens/home/home_view_model.dart';
import 'package:flutter_weather_app/ui/widgets/widgets.dart';
import 'package:stacked/stacked.dart';

import 'components/search_form_view.dart';
import 'components/user_profile_view.dart';

class HomeView extends StatelessWidget {
  final UserProfile userProfile;

  const HomeView({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, widget) {
          return Scaffold(
            appBar: MyAppBar(
              showLogout: true,
              onLogoutPressed: model.onLogoutPressed,
              title: 'Home Page',
            ),
            body: Column(
              children: [
                UserProfileView(
                  userProfile: userProfile,
                ),
                const SearchFormView(),
              ],
            ),
          );
        });
  }
}
