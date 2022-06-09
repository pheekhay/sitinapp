import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sitinapp/dependency_injection.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:sitinapp/src/models/sitin_table.dart';
import 'package:sitinapp/src/notifications/local_notifications.dart';
import 'package:sitinapp/src/restaurant/reservation_bloc/reservation_bloc.dart';
import 'package:sitinapp/src/services/payments/flutterwave_payments.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sitinapp/src/widgets/show_reservation_sheet.dart';
import 'package:sizer/sizer.dart';

class ReservationStepper extends StatefulWidget {
  const ReservationStepper({Key? key, required this.restaurantName, required this.restaurantPhoto}) : super(key: key);
  final String restaurantName;
  final String restaurantPhoto;
  @override
  State<ReservationStepper> createState() => _ReservationStepperState();
}

class _ReservationStepperState extends State<ReservationStepper> {
  int _currentStep = 0;
  int? dropdownValue;
  DateTime reservedDate = DateTime.now();
  TimeOfDay reservedTime = TimeOfDay.now();

  Reservation? reservation;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReservationBloc>(
      create: (context) => getDep<ReservationBloc>(),
      child: Stepper(
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
                items: <int>[1, 2, 3, 4, 5, 6].map<DropdownMenuItem<int>>((int value) {
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
            subtitle: const Text("Choose the date and time for reservation NB:30 min/reservation"),
            isActive: _currentStep == 1,
            state: reservedDate != DateTime.now() && reservedTime != TimeOfDay.now() ? StepState.complete : StepState.editing,
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
                        overlayColor: MaterialStateProperty.all(Colors.brown[100]),
                        highlightColor: Colors.blue,
                        child: Text(
                          formatDate(reservedDate, [dd, "/", mm, "/", yyyy]),
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
                        overlayColor: MaterialStateProperty.all(Colors.brown[100]),
                        highlightColor: Colors.blue,
                        child: Text(
                          "${reservedTime.hour}:${reservedTime.minute}  ${reservedTime.period.toString().replaceFirst("DayPeriod.", "")}",
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
              width: 30.w,
              height: 5.h,
              child: ElevatedButton(
                child: const Text("Mobile Money Payment"),
                onPressed: () {
                  reservation = Reservation(
                    id: "id",
                    restaurantPhoto: widget.restaurantPhoto,
                    restaurantName: widget.restaurantName,
                    customerId: "S0hISWhQgDTUdGjk5CD5ajX6nS42",
                    restaurantId: "46d2ec30-47df-11ec-9a54-93cf04940638",
                    customerName: "David Wong",
                    reservedDate: DateTime(
                      reservedDate.year,
                      reservedDate.month,
                      reservedDate.day,
                      reservedTime.hour,
                      reservedTime.minute,
                    ),
                    price: 20,
                    table: const SitTable(
                      amount: 20,
                      tableNo: 3,
                      numberOfSeats: 3,
                    ),
                  );
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
            content: BlocBuilder<ReservationBloc, ReservationState>(
              builder: (context, state) {
                return SizedBox(
                  width: 100.w,
                  height: 20.h,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 30.w,
                      height: 10.h,
                      child: ElevatedButton(
                        child: const Text("complete Reservation"),
                        onPressed: () async {
                          //populate database with reservation
                          if (reservation != null) {
                            context.read<ReservationBloc>().add(ReservationEvent.makeReservation(reservation: reservation!));
                            newReservationNotification(restaurantName: widget.restaurantName);
                            reservationArrivalReminder(
                              notificationSchedule: DateTime(
                                reservedDate.year,
                                reservedDate.month,
                                reservedDate.day,
                                reservedTime.hour,
                                reservedTime.minute,
                              ),
                              reservationId: reservation!.id,
                              restaurantName: widget.restaurantName,
                            );

                            await showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return ReservedSheetView(
                                    name: widget.restaurantName,
                                    date: reservation!.reservedDate,
                                  );
                                });
                            Navigator.of(context).pop();
                          }

                          //schedule notification timer
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
