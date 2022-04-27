import 'package:tuple/tuple.dart';
import 'package:uni/model/app_state.dart';
import 'package:uni/model/entities/lecture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uni/view/Pages/activities_page_view.dart';
import 'package:uni/view/Pages/secondary_page_view.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key key}) : super(key: key);

  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends SecondaryPageViewState
    with SingleTickerProviderStateMixin {
  TabController tabController;
  ScrollController scrollViewController;

  final List<String> activitiesGroups = [
    'A Decorrer',
    'Atividades futuras'
  ];

  List<List<String>> _groupActivitiesByStatus(List<String> activities) { // TODO: Change String to Activity
    final aggActivities = <List<String>>[];
    final ongoingActivities = <String>[];
    final futureActivities = <String>[];

    for (int i = 0; i < activities.length; ++i){
      // if(activities[i].startDate < currentDate && activities[i].endDate > currentDate)
      ongoingActivities.add(activities[i]);
      // if(activities[i].startDate > currentDate)
      //futureActivities.add(activities[i]);
    }
    aggActivities.add(ongoingActivities);
    aggActivities.add(futureActivities);
    return aggActivities;
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: activitiesGroups.length);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget getBody(BuildContext context) {
    return StoreConnector<AppState, Tuple2<List<String>, RequestStatus>>( // TODO: Change String to Activity
      converter: (store) => Tuple2(["Activity 1", "Activity 2", "Activity 3"], // TODO: Change to 'store.state.content['activities']' when ready
          store.state.content['activitiesStatus']),
      builder: (context, activitiesData) {
        List<String> activities = activitiesData.item1;
        RequestStatus status = activitiesData.item2;
        return ActivitiesPageView(
            tabController: tabController,
            scrollViewController: scrollViewController,
            activitiesGroups: activitiesGroups,
            activitiesStatus: status,
            aggActivities: _groupActivitiesByStatus(activities),
          );
      },
    );
  }
}
