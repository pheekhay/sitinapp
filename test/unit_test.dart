// This is an example unit test.
//
// A unit test tests a single function, method, or class. To learn more about
// writing unit tests, visit
// https://flutter.dev/docs/cookbook/testing/unit/introduction

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sitinapp/dependency_injection.dart';
import 'package:sitinapp/src/models/sitin_user.dart';
import 'package:sitinapp/src/user/user_Bloc/user_bloc.dart';

void main() {
  group('User Bloc', () {
    late UserBloc userBloc;
    late Customer customer;
    setUp(() async {
      await initDep();
      userBloc = getDep<UserBloc>();
      customer = const Customer(id: "1", name: "Dave");
    });
    test('intitial state should be ReadyState', () {
      expect(userBloc.state, ReadyState());
    });

    blocTest(
      'emits loadedUser when UserEvent.saveUser is added',
      build: () => userBloc,
      act: (bloc) => userBloc.add(UserEvent.saveUser(customer)),
      expect: () => LoadedUser(customer),
    );
  });
}
