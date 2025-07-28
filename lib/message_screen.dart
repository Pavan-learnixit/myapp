import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MessageScreen(),
    );
  }
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.pink[50],
              child: ListTile(
                leading: Icon(Icons.warning, color: Colors.red),
                title: Text('Spam SMS protection is disabled'),
                subtitle: Text('Set Truecaller as default SMS app to filter spam messages automatically'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Enable now'),
                ),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green[100], child: Icon(Icons.build)),
            title: Text('JioPay'),
            subtitle: Text('रेजॉगं युझ्ययंगंं योजनंयं ...'),
            trailing: Text('10:36'),
            leadingAndTrailingTextStyle: TextStyle(color: Colors.blue),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green[100], child: Icon(Icons.build)),
            title: Text('ViCARE'),
            subtitle: Text('If you wish to stop receivng Flash o...'),
            trailing: Text('10:36'),
            leadingAndTrailingTextStyle: TextStyle(color: Colors.blue),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.orange, child: Text('go')),
            title: Text('Goibibo: Hotel, Flight &'),
            subtitle: Text('Book Hotel with GOIBIBO'),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text('Install'),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green[100], child: Icon(Icons.build)),
            title: Text('JIOPAY'),
            subtitle: Text('उभ्जंकी! द्सनंदन देतोड 100% 28-ज...'),
            trailing: Text('10:35'),
            leadingAndTrailingTextStyle: TextStyle(color: Colors.blue),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.purple[100], child: Icon(Icons.build)),
            title: Text('REGINF'),
            subtitle: Text('न.बरं नंनं अग्नी! बधंनंशं इनं ...'),
            trailing: Text('10'),
            leadingAndTrailingTextStyle: TextStyle(color: Colors.blue),
          ),
          // Add more ListTiles for additional messages from the second screenshot
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green[100], child: Icon(Icons.build)),
            title: Text('CBSSBI'),
            subtitle: Text('Dear Customer, you have done 06 o...'),
            trailing: Text('Yesterday'),
            leadingAndTrailingTextStyle: TextStyle(color: Colors.blue),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red[100], child: Icon(Icons.shield)),
            title: Text('57575711'),
            subtitle: Text('855982 is your Adobe code jadobe.c...'),
            trailing: Text('Yesterday'),
            leadingAndTrailingTextStyle: TextStyle(color: Colors.blue),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red[100], child: Icon(Icons.shield)),
            title: Text('611123'),
            subtitle: Text('Rs994= Unlimited data+calls, full da...'),
            trailing: Text('Yesterday'),
            leadingAndTrailingTextStyle: TextStyle(color: Colors.blue),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.orange, child: Text('go')),
            title: Text('Goibibo: Hotel, Flight &'),
            subtitle: Text('Book Hotel with GOIBIBO'),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text('Install'),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue[100], child: Icon(Icons.build)),
            title: Text('SBIUPI'),
            subtitle: Text('Dear UPI user A/C X1986 debited by...'),
            trailing: Text('Yesterday'),
            leadingAndTrailingTextStyle: TextStyle(color: Colors.blue),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red[100], child: Icon(Icons.shield)),
            title: Text('620016'),
            subtitle: Text('Recharge now Jio no. 812318314'),
            trailing: Text('Sat'),
            leadingAndTrailingTextStyle: TextStyle(color: Colors.blue),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.cyan[100], child: Icon(Icons.build)),
            title: Text('NSESMS'),
            trailing: Text('Sat'),
            leadingAndTrailingTextStyle: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}