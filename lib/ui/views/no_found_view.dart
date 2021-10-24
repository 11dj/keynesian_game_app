import 'package:flutter/material.dart';

class NotFoundView extends StatefulWidget {
  @override
  _NotFoundViewState createState() => _NotFoundViewState();
}

class _NotFoundViewState extends State<NotFoundView> {
  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context);

    return Scaffold(
      backgroundColor: styles.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('No route defined ', style: styles.textTheme.headline4),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Go back', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
