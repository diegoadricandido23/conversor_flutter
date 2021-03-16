import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            SizedBox(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: DropdownButton(
                          items: [],
                          onChanged: (value) {})),
                  Expanded(
                    child: TextField(
                          decoration: InputDecoration(),
                        ),
                  ),
                ],
              ),
            ),
            RaisedButton(
                onPressed: () {},
                child: Text('CONVERTER')),
          ],
        ),
      ),
    );
  }
}
