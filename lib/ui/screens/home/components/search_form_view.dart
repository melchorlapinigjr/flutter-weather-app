import 'package:flutter/material.dart';
import 'package:flutter_weather_app/ui/screens/home/home_view_model.dart';
import 'package:flutter_weather_app/ui/widgets/widgets.dart';
import 'package:stacked/stacked.dart';

class SearchFormView extends ViewModelWidget<HomeViewModel> {
  const SearchFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Form(
      key: viewModel.searchCityFormKey,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextFormField(
                onChanged: viewModel.onCityInputChanged,
                validator: viewModel.onValidateInputCity,
                decoration: InputDecoration(
                  hintText: 'City',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            sizedBoxHeight16(),
            MyButton(
                onPressed: viewModel.onDisplayWeatherPressed,
                label: 'Display Weather',
                isLoading: viewModel.isBusy)
          ],
        ),
      ),
    );
  }
}
