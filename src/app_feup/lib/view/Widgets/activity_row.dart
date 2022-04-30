import 'package:uni/model/entities/activity.dart';
import 'package:flutter/material.dart';
import 'package:uni/view/Widgets/row_container.dart';

class ActivityRow extends StatelessWidget {
  final Activity _activity;

  ActivityRow(
      {Key key,
      @required Activity activity})
      : this._activity = activity, super(key: key);

  @override
  Widget build(BuildContext context) {
    return RowContainer(
      color: Theme.of(context).backgroundColor,
      child: Container(
        padding: EdgeInsets.all(11),
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                this._activity.getHourMinute(),
                style: Theme.of(context).textTheme.headline4
              )
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Text(
                    this._activity.getCourse(),
                    style: Theme.of(context).textTheme.headline3.apply(fontSizeDelta: 10)
                  ),
                  Text(
                    this._activity.getDescription(),
                    style: Theme.of(context).textTheme.headline4
                  )
                ]
              )
            )
          ]
        ),
      ),
    );
  }
}
