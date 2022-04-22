import 'package:flutter/material.dart';
import 'package:uni/view/Pages/secondary_page_view.dart';
import 'package:uni/view/Widgets/activities_page_title_filter.dart';

class ActivitiesPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ActivitiesPageViewState();
}

class ActivitiesPageViewState extends SecondaryPageViewState {
  final double borderRadius = 10.0;

  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
    return ListView(
      children: <Widget>[
        ActivitiesPageTitleFilter(
            name: 'Atividades',
        ),
        Center(
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
        )
      ],
    );
  }
}