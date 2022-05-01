import 'package:uni/model/entities/activity.dart';
import 'package:flutter/material.dart';
import 'package:uni/view/Widgets/generic_row.dart';

class PrimaryActivityRow extends StatelessWidget {
  final Activity _activity;

  PrimaryActivityRow(
      {Key key,
      @required Activity activity})
      : this._activity = activity, super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericRow(
      topBottomPaddingDelta: 10,
      left: Text(
        this._activity.getHourMinute(),
        style: Theme.of(context).textTheme.headline4
      ),
      center: Column(
        children: [
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
    );
  }
}
