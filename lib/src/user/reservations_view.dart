import 'dart:developer';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sitinapp/dependency_injection.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:sitinapp/src/notifications/local_notifications.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sitinapp/src/user/reservation_action_bloc/reservation_action_bloc.dart';
import 'package:sitinapp/src/user/user_Bloc/user_bloc.dart';
import 'package:sitinapp/src/widgets/loading_widget.dart';
import 'package:sizer/sizer.dart';

class ReservationsView extends StatelessWidget {
  static const String routeName = "/reservations";

  const ReservationsView({Key? key, this.arrived, this.reservationId}) : super(key: key);

  final String? reservationId;
  final String? arrived;

  @override
  Widget build(BuildContext context) {
    final userid = (context.watch<UserBloc>().state as LoadedUser).user!.id;

    return BlocProvider<ReservationActionBloc>(
      create: (context) => getDep<ReservationActionBloc>()..add(ReservationActionEvent.streamReservations(userid)),
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "My reservations",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ),
              BlocBuilder<ReservationActionBloc, ReservationActionState>(
                builder: (context, state) {
                  return state.map(
                    initial: (initial) {
                      if (arrived != null && reservationId != null && arrived == "true") {
                        context.read<ReservationActionBloc>().add(ReservationActionEvent.arrived(reservationId!));
                      }
                      return Container();
                    },
                    doneAction: (value) => Container(),
                    loadedReservation: (loaded) {
                      if (loaded.reservations != null) {
                        return SizedBox(
                          // color: Colors.amber,
                          height: 74.h,
                          child: ListView.separated(
                            itemBuilder: (context, i) {
                              return Card(
                                margin: const EdgeInsets.all(1),
                                child: Row(
                                  children: [
                                    //image
                                    Container(
                                      height: 8.h,
                                      width: 14.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                            image: NetworkImage(loaded.reservations![i].restaurantPhoto),
                                            fit: BoxFit.cover,
                                            onError: (err, trace) {
                                              log(trace.toString() + err.toString());
                                            }),
                                      ),
                                    ),
                                    SizedBox(
                                      // color: Colors.amber,
                                      width: 75.w,
                                      height: 10.h,
                                      child: ListTile(
                                        selectedTileColor: Colors.green[400],
                                        // onTap: () {
                                        //   //TODO:OPEN A MODAL RESERVATION PAGE

                                        // },

                                        title: Text(
                                          formatDate(
                                            loaded.reservations![i].reservedDate,
                                            [dd, " ", M, ",", yyyy, " ", HH, ":", nn],
                                          ),
                                          style: GoogleFonts.openSans(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        subtitle: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              loaded.reservations![i].restaurantName,
                                              style: SitInTheme.lightTextTheme.headline3,
                                            ),
                                          ],
                                        ),
                                        trailing: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              loaded.reservations![i].status.toString(),
                                              style: GoogleFonts.openSans(
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold,
                                                color: i == 1
                                                    ? Colors.green
                                                    : i == 2
                                                        ? Colors.red
                                                        : Colors.amber,
                                              ),
                                            ),
                                            loaded.reservations![i].customerStatus == CustomerStatus.absent &&
                                                    loaded.reservations![i].customerStatus != CustomerStatus.seated
                                                ? TextButton(
                                                    onPressed: () {
                                                      context
                                                          .read<ReservationActionBloc>()
                                                          .add(ReservationActionEvent.arrived(loaded.reservations![i].id));
                                                      cancelNotifications();
                                                    },
                                                    child: Text(
                                                      "Arrived",
                                                      style: GoogleFonts.openSans(
                                                        fontSize: 10.0,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.green,
                                                      ),
                                                    ),
                                                  )
                                                : loaded.reservations![i].customerStatus == CustomerStatus.seated
                                                    ? TextButton(
                                                        onPressed: () {
                                                          context
                                                              .read<ReservationActionBloc>()
                                                              .add(ReservationActionEvent.done(loaded.reservations![i].id));
                                                        },
                                                        child: Text(
                                                          "Leave",
                                                          style: GoogleFonts.openSans(
                                                            fontSize: 10.0,
                                                            fontWeight: FontWeight.normal,
                                                            color: Colors.red,
                                                          ),
                                                        ),
                                                      )
                                                    : const SizedBox.shrink()
                                          ],
                                        ),
                                      ),
                                    )
                                    //text
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, i) {
                              if (i != 0) {
                                return Divider(
                                  thickness: 1,
                                  height: 4,
                                  color: Colors.grey[400],
                                );
                              } else {
                                return const SizedBox.shrink();
                              }
                            },
                            itemCount: 3,
                          ),
                        );
                      } else {
                        return SizedBox(
                          height: 75.h,
                          width: 100.w,
                          child: Center(
                            child: Text(
                              "No reservations made",
                              style: TextStyle(color: Colors.grey.shade400),
                            ),
                          ),
                        );
                      }
                    },
                    loadingReservation: (loading) {
                      return SizedBox(height: 74.h, child: const LoadingWidget());
                    },
                    reservationActionError: (msg) {
                      return Center(
                        child: Text(
                          "No reservations made",
                          style: TextStyle(color: Colors.grey.shade200),
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
