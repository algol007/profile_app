import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileCard(),
  ));
}

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My Profile Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/foto-ady-10.jpg'),
                  radius: 40.0),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ady Rahmansyah',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0),
              Text('adyrahmansyah@gmail.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0))
            ])
          ],
        ),
      ),
    );
  }
}
