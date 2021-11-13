import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:sitinapp/src/models/sitin_table.dart';
import 'package:sitinapp/src/services/payments/flutterwave_payments.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sizer/sizer.dart';

class ReservationStepper extends StatefulWidget {
  const ReservationStepper({Key? key}) : super(key: key);

  @override
  State<ReservationStepper> createState() => _ReservationStepperState();
}

class _ReservationStepperState extends State<ReservationStepper> {
  int _currentStep = 0;
  int? dropdownValue;
  DateTime? reservedDate;
  TimeOfDay? reservedTime;

  Reservation? reservation;
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
          state: dropdownValue == null ? StepState.editing : StepState.complete,
          title: const Text('Select Seat'),
          subtitle: const Text("Choose the number of seats per table"),
          isActive: _currentStep == 0,
          content: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.8.h),
            width: 40.w,
            height: 5.h,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton<int>(
              isDense: true,
              isExpanded: true,
              borderRadius: BorderRadius.circular(10),
              icon: Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Colors.brown[900],
              ),
              value: dropdownValue,
              onChanged: (int? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <int>[1, 2, 3, 4, 5, 6]
                  .map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text("${value.toString()} seats "),
                );
              }).toList(),
            ),
          ),
        ),
        Step(
          title: const Text('Schedule'),
          subtitle: const Text(
              "Choose the date and time for reservation NB:30 min/reservation"),
          isActive: _currentStep == 1,
          state: reservedDate != null && reservedTime != null
              ? StepState.complete
              : StepState.editing,
          content: SizedBox(
            width: 100.w,
            height: 15.h,
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(CupertinoIcons.calendar),
                    SizedBox(
                      width: 5.w,
                    ),
                    InkWell(
                      hoverColor: Colors.blue,
                      overlayColor:
                          MaterialStateProperty.all(Colors.brown[100]),
                      highlightColor: Colors.blue,
                      child: Text(
                        formatDate(reservedDate ?? DateTime.now(),
                            [dd, "/", mm, "/", yyyy]),
                        style: TextStyle(
                          color: Colors.brown[400],
                          fontSize: 14.sp,
                          decorationStyle: TextDecorationStyle.solid,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () async {
                        DateTime? selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2030),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData.light(),
                              child: child!,
                            );
                          },
                        );
                        if (selectedDate != null) {
                          setState(() {
                            reservedDate = selectedDate;
                          });
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(CupertinoIcons.time),
                    SizedBox(
                      width: 5.w,
                    ),
                    InkWell(
                      hoverColor: Colors.blue,
                      overlayColor:
                          MaterialStateProperty.all(Colors.brown[100]),
                      highlightColor: Colors.blue,
                      child: Text(
                        "${reservedTime?.hour ?? TimeOfDay.now().hour}:${reservedTime?.minute ?? TimeOfDay.now().minute} ${reservedTime?.period.toString().replaceFirst("DayPeriod.", "") ?? ""}",
                        style: TextStyle(
                          color: Colors.brown[400],
                          fontSize: 14.sp,
                          decorationStyle: TextDecorationStyle.solid,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () async {
                        TimeOfDay? selectedTime = await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if (selectedTime != null) {
                          setState(() {
                            reservedTime = selectedTime;
                          });
                        }
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Step(
          title: Text(
            'Make Payment(Optional)',
            style: SitInTheme.lightTextTheme.headline6,
          ),
          isActive: _currentStep == 2,
          content: SizedBox(
            width: 60.w,
            height: 10.h,
            child: ElevatedButton(
              child: const Text("Mobile Money Payment"),
              onPressed: () {
                reservation = Reservation(
                    id: "id",
                    customerId: "S0hISWhQgDTUdGjk5CD5ajX6nS42",
                    restaurantId: "zYNiWbA7LMGGhrfcmY0H",
                    customerName: "customerName",
                    reservedDate: reservedDate!,
                    price: 20,
                    table: const SitTable(
                      amount: 20,
                      tableNo: 3,
                      numberOfSeats: 3,
                    ),
                    cancelled: false);
                final payment = FlutterwavePaymentGateway();
                payment.makePayment(reservation!, context);
              },
            ),
          ),
        ),
        Step(
          title: Text(
            'Done',
            style: SitInTheme.lightTextTheme.headline6,
          ),
          isActive: _currentStep == 3,
          content: SizedBox(
            width: 100.w,
            height: 20.h,
          ),
        ),
      ],
    );
  }
}
