// enum should be placed somewhere else?
import 'package:uni/model/entities/bus_stop.dart';
import 'package:uni/model/entities/session.dart';
import 'package:uni/model/entities/trip.dart';
import 'package:uni/utils/constants.dart' as Constants;

import 'entities/exam.dart';
import 'entities/lecture.dart';
import 'entities/restaurant.dart';
import 'entities/activity.dart';

enum RequestStatus { none, busy, failed, successful }

///
class AppState {
  Map content = Map<String, dynamic>();

  Map getInitialContent() {
    return {
      'schedule': <Lecture>[],
      'exams': <Exam>[],
      'restaurants': <Restaurant>[],
      'activities': <Activity>[Activity("ES", "Kahoot #3", DateTime(2022, 4, 1), DateTime(2022, 5, 10, 10, 50)), Activity("TCOMP", "Checkpoint 54", DateTime(2024, 4, 2), DateTime(2025, 5, 3))],
      'filteredExam': Map<String, bool>(),
      'scheduleStatus': RequestStatus.none,
      'loginStatus': RequestStatus.none,
      'examsStatus': RequestStatus.none,
      'activitiesStatus': RequestStatus.none,
      'selected_page': Constants.navPersonalArea,
      'session': Session(authenticated: false),
      'configuredBusStops': Map<String, BusStopData>(),
      'currentBusTrips': Map<String, List<Trip>>(),
      'busstopStatus': RequestStatus.none,
      'timeStamp': DateTime.now(),
      'currentTime': DateTime.now(),
      'profileStatus': RequestStatus.none,
      'printBalanceStatus': RequestStatus.none,
      'feesStatus': RequestStatus.none,
      'coursesStateStatus': RequestStatus.none,
      'lastUserInfoUpdateTime': null
    };
  }

  AppState(Map content) {
    if (content != null) {
      this.content = content;
    } else {
      this.content = this.getInitialContent();
    }
  }

  AppState cloneAndUpdateValue(key, value) {
    return AppState(Map.from(this.content)..[key] = value);
  }

  AppState getInitialState() {
    return AppState(null);
  }
}
