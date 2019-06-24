import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  StepperDemo({Key key}) : super(key: key);

  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StepperDemo"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(primaryColor: Colors.black),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (int index) {
                  setState(() {
                    _currentStep = index;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    _currentStep = _currentStep < 2 ? _currentStep + 1 : 0; 
                  });
                },
                onStepCancel: () {
                  setState(() {
                    _currentStep = _currentStep > 0 ? _currentStep - 1 : 0;
                  });
                },
                steps: [
                  Step(
                    title: Text("Login"),
                    subtitle: Text("Login First"),
                    content: Text("In nostrud amet fugiat occaecat consequat do anim."),
                    isActive: _currentStep == 0
                  ),
                  Step(
                    title: Text("Choose plan."),
                    subtitle: Text("Choose you plan"),
                    content: Text("Pariatur incididunt cupidatat cupidatat eiusmod eiusmod duis veniam quis qui qui et."),
                    isActive: _currentStep == 1
                  ),
                  Step(
                    title: Text("Confirm payment"),
                    subtitle: Text("Confirm payment method."),
                    content: Text("Elit duis Lorem Lorem non ullamco consectetur eu sint labore laborum aliquip."),
                    isActive: _currentStep == 2
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
