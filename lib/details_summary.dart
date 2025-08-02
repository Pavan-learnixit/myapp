import 'package:flutter/material.dart';

class DetailsSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Pavan Umarani', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF1E88E5),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Last 30 days', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Icon(Icons.share, color: Color(0xFF1E88E5)),
                ],
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                elevation: 4.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            border: Border.all(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shield, color: Colors.red, size: 30),
                              SizedBox(height: 8.0),
                              Text('22', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              Text('Spam calls identified', textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            border: Border.all(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.timer, color: Colors.green, size: 30),
                              SizedBox(height: 8.0),
                              Text('10m 46s', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              Text('Time saved from spammers', textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                elevation: 4.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            border: Border.all(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search, color: Colors.blue, size: 30),
                              SizedBox(height: 8.0),
                              Text('332', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              Text('Unknown numbers identified', textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F5F5),
                            border: Border.all(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.message, color: Colors.orange, size: 30),
                              SizedBox(height: 8.0),
                              Text('163', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              Text('Messages moved to spam', textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.block, color: Colors.red, size: 30),
                title: Text('Manage blocking', style: TextStyle(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.watch, size: 30),
                title: Text('Truecaller for Wear OS', style: TextStyle(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.delete, size: 30),
                title: Text('Inbox cleaner', style: TextStyle(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.security, size: 30),
                title: Text('Fraud Insurance', style: TextStyle(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.visibility, size: 30),
                title: Text('Who viewed my profile', style: TextStyle(fontSize: 16)),
                trailing: CircleAvatar(child: Text('32', style: TextStyle(fontSize: 16))),
              ),
              ListTile(
                leading: Icon(Icons.person_search, size: 30),
                title: Text('Who searched for me', style: TextStyle(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail, size: 30),
                title: Text('Contact requests', style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}