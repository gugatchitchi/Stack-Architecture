import 'package:flutter/material.dart';
import 'package:stack_architecture/ui/views/future_example/future_example_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FutureExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.hasError
            ? Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(
                  'An error has occered while running the future',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : Center(
                child: model.isBusy
                    ? CircularProgressIndicator()
                    : Text(model.data),
              ),
      ),
      viewModelBuilder: () => FutureExampleViewModel(),
    );
  }
}
