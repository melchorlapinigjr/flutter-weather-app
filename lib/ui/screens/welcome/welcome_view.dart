import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/widgets.dart';
import 'welcome_view_model.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Forecast'),
        leading: const Icon(Icons.cloud,size: 36,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 74, right: 24, left: 24),
        child: ViewModelBuilder<WelcomeViewModel>.nonReactive(
            viewModelBuilder: () => WelcomeViewModel(),
            builder: (context, model, widget) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      'Welcome to the weather forecast flutter application. Please login with your GitHub user to use the application and view the weather in you city.'),
                  sizedBoxHeight16(),
                  MyButton(
                    onPressed: model.onLoginPressed,
                    label: 'Login',
                  )
                ],
              );
            }),
      ),
    );
  }
}
