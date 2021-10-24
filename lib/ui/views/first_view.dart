import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FirstView extends StatefulWidget {
  FirstView({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _FirstViewState createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Keynesian Beauty Contest'),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () => print('hrllo'), child: Text('Start Game')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
