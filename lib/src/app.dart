import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sitinapp/dependency_injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/models/sitin_user.dart';
import 'package:sitinapp/src/restaurant/restaurant_detail_view.dart';
import 'package:sitinapp/src/restaurant/restaurants_view.dart';
import 'package:sitinapp/src/settings/settings_controller.dart';
import 'package:sitinapp/src/theme.dart';
import 'package:sitinapp/src/user/homeview.dart';
import 'package:sitinapp/src/user/profile.dart';
import 'package:sitinapp/src/user/reservations_view.dart';
import 'package:sitinapp/src/user/signin_view.dart';
import 'package:sitinapp/src/user/user_Bloc/user_bloc.dart';
import 'package:sizer/sizer.dart';

import 'settings/settings_view.dart';

/// The Widget that configures your application.
class SitIn extends StatelessWidget {
  const SitIn({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return Sizer(builder: (context, _, __) {
          return BlocProvider<UserBloc>(
            create: (context) => getDep<UserBloc>(),
            child: MaterialApp(
              // Providing a restorationScopeId allows the Navigator built by the
              // MaterialApp to restore the navigation stack when a user leaves and
              // returns to the app after it has been killed while running in the
              // background.
              restorationScopeId: 'sitin',
              debugShowCheckedModeBanner: false,
              initialRoute: "/",
              // Provide the generated AppLocalizations to the MaterialApp. This
              // allows descendant Widgets to display the correct translations
              // depending on the user's locale.
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale(
                  'en',
                ), // English, no country code
              ],

              // Use AppLocalizations to configure the correct application title
              // depending on the user's locale.
              //
              // The appTitle is defined in .arb files found in the localization
              // directory.
              onGenerateTitle: (BuildContext context) => AppLocalizations.of(context)!.appTitle,

              // Define a light and dark color theme. Then, read the user's
              // preferred ThemeMode (light, dark, or system default) from the
              // SettingsController to display the correct theme.
              theme: SitInTheme.light(),
              darkTheme: SitInTheme.dark(),
              themeMode: settingsController.themeMode,

              // Define a function to handle named routes in order to support
              // Flutter web url navigation and deep linking.
              onGenerateRoute: (RouteSettings routeSettings) {
                return MaterialPageRoute<void>(
                  settings: routeSettings,
                  builder: (BuildContext context) {
                    switch (routeSettings.name) {
                      case HomeView.routeName:
                        return HomeView(user: routeSettings.arguments as Customer);
                      case RestaurantsListView.routeName:
                        return RestaurantsListView();
                      case ReservationsView.routeName:
                        return const ReservationsView();
                      case RestaurantDetailView.routeName:
                        return RestaurantDetailView(
                          restaurant: routeSettings.arguments as Restaurant,
                        );
                      case ProfileView.routeName:
                        return const ProfileView();
                      case SettingsView.routeName:
                        return SettingsView(controller: settingsController);
                      // case SignInView.routeName:
                      //   return const SignInView();
                      default:
                        return const SignInView();
                    }
                  },
                );
              },
            ),
          );
        });
      },
    );
  }
}
