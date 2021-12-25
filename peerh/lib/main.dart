import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: StudentView(),
));

class StudentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Student View'),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent[400],
          elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),

        child: Row(
          children: [
            const Center(
              child: CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/stud.jpg'),
              ),
            ),
            Container(
              child: Column(
                children: const [
                  Text(
                      "NAME"
                  ),
                  Text(
                      "Email ID"
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}