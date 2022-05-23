import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tuple/tuple.dart';
import 'package:uni/model/app_state.dart';
import 'package:uni/model/entities/course.dart';
import 'package:uni/model/entities/activity.dart';
import 'package:uni/model/entities/course_unit.dart';
import 'package:uni/model/entities/profile.dart';
import 'package:uni/model/entities/session.dart';
import 'package:uni/redux/action_creators.dart';
import 'package:intl/intl.dart';

import 'action_creators.dart';

void main() {
  group('Activities Action Creator', () {
    final fetcherMock = MockActivitiesFetcher();
    final Tuple2<String, String> userPersistentInfo = Tuple2('', '');
    final mockStore = MockStore();

    final profile = Profile();
    profile.courses = [Course(id: 7474)];
    final content = {
      'session': Session(authenticated: true),
      'profile': profile,
      'currUcs': [
        CourseUnit(abbreviation: 'C1'),
        CourseUnit(abbreviation: 'C2')
      ]
    };

    final Activity activity1 = Activity('C1', 'D1',
      DateFormat('dd/MM/yy H:m').parse('01/01/1970 08:30'),
      DateFormat('dd/MM/yy H:m').parse('02/02/1970 23:59'));

    final Activity activity2 = Activity('C2', 'D2',
      DateFormat('dd/MM/yy H:m').parse('01/01/1971 08:30'),
      DateFormat('dd/MM/yy H:m').parse('02/02/1971 23:59'));

    final Activity activity3 = Activity('C3', 'D2', // User not in UC 'C3'
      DateFormat('dd/MM/yy H:m').parse('01/01/1971 08:30'),
      DateFormat('dd/MM/yy H:m').parse('02/02/1971 23:59'));

    when(mockStore.state).thenReturn(AppState(content));
    test('When given two activities', () async {
      final Completer<Null> completer = Completer();
      final actionCreator =
          getUserActivities(completer, userPersistentInfo, fetcher: fetcherMock);
      when(fetcherMock.getActivities(any))
          .thenAnswer((_) async => [activity1, activity2]);

      actionCreator(mockStore);
      await completer.future;
      final List<dynamic> actions =
          verify(mockStore.dispatch(captureAny)).captured;
      expect(actions.length, 3);
      expect(actions[0].status, RequestStatus.busy);
      expect(actions[1].activities, [activity1, activity2]);
      expect(actions[2].status, RequestStatus.successful);
    });
    test('When an error occurs while trying to obtain the activities', () async {
      final Completer<Null> completer = Completer();
      final actionCreator =
          getUserActivities(completer, userPersistentInfo, fetcher: fetcherMock);
      when(fetcherMock.getActivities(any))
          .thenAnswer((_) async => throw Exception('💥'));

      actionCreator(mockStore);
      await completer.future;
      final List<dynamic> actions =
          verify(mockStore.dispatch(captureAny)).captured;
      expect(actions.length, 2);
      expect(actions[0].status, RequestStatus.busy);
      expect(actions[1].status, RequestStatus.failed);
    });
  });
}
