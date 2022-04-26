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

  final List<String> activitiesOptions = [
    'A Decorrer',
    'Atividades futuras'
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: activitiesOptions.length);
    tabController.animateTo((tabController.index)); // TODO: Is this necessary
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget getBody(BuildContext context) {
    return StoreConnector<AppState, Tuple2<List<Lecture>, RequestStatus>>(
      converter: (store) => Tuple2(store.state.content['schedule'],
          store.state.content['scheduleStatus']),
      builder: (context, lectureData) {
        final lectures = lectureData.item1;
        final scheduleStatus = lectureData.item2;
        return ActivitiesPageView(
            tabController: tabController,
            scrollViewController: scrollViewController,
            activitiesOptions: activitiesOptions
            );
      },
    );
  }
}
