import 'package:flutter/material.dart';

void main() {
  runApp(AssistantApp());
}

class AssistantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AssistantScreen(),
    );
  }
}

class AssistantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search numbers, names & more',
            prefixIcon: Icon(Icons.person, color: Colors.blue),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.blue,
                    child: Text('15', style: TextStyle(color: Colors.white, fontSize: 10)),
                  ),
                ),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
              ],
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Assistant status'),
            trailing: Icon(Icons.settings),
            subtitle: Text('Inactive', style: TextStyle(color: Colors.red)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('All'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.call),
                    Text('Caller replied'),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Icon(Icons.assistant, size: 50, color: Colors.blue),
                    SizedBox(height: 10),
                    Text(
                      'Get our AI Assistant',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('Upgrade to Premium to allow the Assistant to answer incoming calls for you'),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Upgrade'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text('No Assistant calls'),
        ],
      ),
    );
  }
}