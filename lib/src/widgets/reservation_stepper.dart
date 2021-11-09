import 'package:flutter/material.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sizer/sizer.dart';

class ReservationStepper extends StatefulWidget {
  const ReservationStepper({Key? key}) : super(key: key);

  @override
  State<ReservationStepper> createState() => _ReservationStepperState();
}

class _ReservationStepperState extends State<ReservationStepper> {
  int _currentStep = 0;
  String dropdownValue = 'Seat';
  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _currentStep,
      onStepContinue: () {
        if (_currentStep >= 4) return;
        setState(() {
          _currentStep += 1;
        });
      },
      onStepCancel: () {
        if (_currentStep <= 0) return;
        setState(() {
          _currentStep -= 1;
        });
      },
      steps: <Step>[
        Step(
          title: Text('Select Seat'),
          content: SizedBox(
            width: 10.w,
            height: 10.h,
            child: DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
        Step(
          title: const Text('Schedule'),
          content: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Column(
              children: [],
            ),
          ),
        ),
        Step(
          title: Text(
            'Make Payment(Optional)',
            style: SitInTheme.lightTextTheme.headline6,
          ),
          content: SizedBox(
            width: 100.w,
            height: 20.h,
          ),
        ),
        Step(
          title: Text(
            'Done',
            style: SitInTheme.lightTextTheme.headline6,
          ),
          content: SizedBox(
            width: 100.w,
            height: 20.h,
          ),
        ),
      ],
    );
  }
}
