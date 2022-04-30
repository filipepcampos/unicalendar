import 'package:uni/model/entities/activity.dart';
import 'package:flutter/material.dart';
import 'package:uni/view/Widgets/row_container.dart';

class SecondaryActivityRow extends StatelessWidget {
  final Activity _activity;

  SecondaryActivityRow(
      {Key key,
      @required Activity activity})
      : this._activity = activity, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: RowContainer(
        color: Theme.of(context).backgroundColor,
        child: Container(
          padding: EdgeInsets.all(11),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: <Widget>[
                    Text(
                      this._activity.isOccuring() ? 'Termina' : 'Inicia',
                      style: Theme.of(context).textTheme.headline4.apply(fontSizeDelta: -4)
                    ),
                    Text(
                      this._activity.getDayMonth(),
                      style: Theme.of(context).textTheme.headline4
                    )
                  ]
                )
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  this._activity.getDescription(),
                  style: Theme.of(context).textTheme.headline4.apply(fontSizeDelta: -4)
                )
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  this._activity.getCourse(),
                  style: Theme.of(context).textTheme.headline3.apply(fontSizeDelta: 5)
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}
