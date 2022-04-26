import 'package:flutter/material.dart';
import 'package:uni/view/Pages/secondary_page_view.dart';
import 'package:uni/view/Widgets/activities_page_title_filter.dart';

/// Manages the 'schedule' sections of the app
class ActivitiesPageView extends StatelessWidget {
  ActivitiesPageView(
      {Key key,
      @required this.tabController,
      @required this.activitiesOptions,
      this.scrollViewController});

  final List<String> activitiesOptions;
  final TabController tabController;
  final ScrollController scrollViewController;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);

    return Column(children: <Widget>[
      ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          ActivitiesPageTitleFilter(
            name: 'Atividades',
          ),
          TabBar(
            controller: tabController,
            isScrollable: true,
            tabs: createTabs(queryData, context),
          ),
        ],
      ),
      Expanded(
        child: TabBarView(
        controller: tabController,
        children: <Widget>[
          createActivitySection(queryData),
          createActivitySection(queryData)
        ],
      ))
    ]);
  }

  /// Returns a list of widgets empty with tabs for each option.
  List<Widget> createTabs(queryData, BuildContext context) {
    final List<Widget> tabs = <Widget>[];
    for (var i = 0; i < activitiesOptions.length; i++) {
      tabs.add(Container(
        color: Theme.of(context).backgroundColor,
        width: queryData.size.width * 1 / activitiesOptions.length,
        child: Tab(key: Key('activities-page-tab-$i'), text: activitiesOptions[i]),
      ));
    }
    return tabs;
  }

  Widget createActivitySection(queryData) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          left: queryData.size.width / 12,
          right: queryData.size.width / 12,
          top: queryData.size.width / 12,
          bottom: queryData.size.width / 12
        ),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(text: 'Adriano Soares\n'),
              TextSpan(text: 'Ângela Cruz\n'),
              TextSpan(text: 'Filipe Campos\n'),
              TextSpan(text: 'Francisco Cerqueira\n'),
              TextSpan(text: 'Nuno Castro\n')
            ]
          ),
        )
      )
    );
  }
}
