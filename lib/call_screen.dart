import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallsScreen(),
    );
  }
}

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  String _callerIdOption = 'classic'; // Default selected option for Caller ID
  bool _hidePhonebook = false;
  bool _hideNonPhonebook = false;
  bool _identifyNumbers = false;
  bool _groupCalls = true;
  bool _showFrequentContacts = true;
  bool _announceCalls = false;
  bool _callAlert = true;
  bool _missedCallNotif = false;
  bool _remindMissedCalls = false;
  bool _dialAssist = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Calls', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Troubleshoot calling section
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0xFF1E88E5),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.white, size: 20),
                    SizedBox(width: 8.0),
                    Text(
                      'Troubleshoot calling',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.warning, color: Colors.red, size: 20),
                  title: Text(
                    'Disable battery optimisation',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Add navigation or action here
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.help_outline, color: Colors.white, size: 20),
                  title: Text(
                    'Visit Help Center',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Add navigation or action here
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 24.0),
          // Caller ID section
          Text(
            'Caller ID',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 16.0),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: SizedBox(
          height: 200.0, // Fixed height to make cards even
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/full_screen.png', height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Text(
                        'Full Screen',
                        style: TextStyle(fontSize: 16),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Radio(
                    value: 'full',
                    groupValue: _callerIdOption,
                    onChanged: (value) {
                      setState(() {
                        _callerIdOption = value as String;
                      });
                    },
                    activeColor: Color(0xFF1E88E5),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Recommended, more reliable',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    SizedBox(width: 16.0),
    Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: SizedBox(
          height: 200.0, // Fixed height to match the first card
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/classic_popup.png', height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Text(
                        'Classic Popup',
                        style: TextStyle(fontSize: 16),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Radio(
                    value: 'classic',
                    groupValue: _callerIdOption,
                    onChanged: (value) {
                      setState(() {
                        _callerIdOption = value as String;
                      });
                    },
                    activeColor: Color(0xFF1E88E5),
                  ),
                ],
              ),
              // Empty space to match the height of the first card
              SizedBox(height: 20.0), // Adjust this value to balance the height
            ],
          ),
        ),
      ),
    ),
  ],
),
          SizedBox(height: 24.0),
          // After call details section
          Text(
            'After call details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 16.0),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The after call screen offers a call summary and offers quick actions like blocking and messaging.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Note: Missed call details will always be shown, regardless of the settings.',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: SwitchListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Hide for phonebook contacts'),
              value: _hidePhonebook,
              onChanged: (value) {
                setState(() {
                  _hidePhonebook = value;
                });
              },
              activeColor: Color(0xFF1E88E5),
            ),
          ),
Card(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
  child: SwitchListTile(
    contentPadding: EdgeInsets.all(16.0),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hide for non-phonebook contacts',
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 4.0), // Adds spacing between the two text lines
        Text(
          'Available with Premium',
          style: TextStyle(color: Color(0xFF1E88E5)),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
    value: _hideNonPhonebook,
    onChanged: (value) {
      setState(() {
        _hideNonPhonebook = value;
      });
    },
    activeColor: Color(0xFF1E88E5),
  ),
),
          // Number identification section
          SizedBox(height: 24.0),
          Text(
            'Number identification',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 16.0),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: SwitchListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Identify numbers on other apps'),
              subtitle: Text('Identify unknown numbers on other messaging apps.', style: TextStyle(fontSize: 12, color: Colors.grey)),
              value: _identifyNumbers,
              onChanged: (value) {
                setState(() {
                  _identifyNumbers = value;
                });
              },
              activeColor: Color(0xFF1E88E5),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Receive Video Caller ID'),
              subtitle: Text('You will see Video Caller ID on calls from Verified Businesses.', style: TextStyle(fontSize: 12, color: Colors.grey)),
              onTap: () {
                // Add navigation or action here
              },
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Manage preference', style: TextStyle(color: Color(0xFF1E88E5))),
              onTap: () {
                // Add navigation or action here
              },
            ),
          ),
          // SIM management section
          SizedBox(height: 24.0),
          Text(
            'SIM management',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 16.0),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Set Default SIM'),
              subtitle: Text('Always ask', style: TextStyle(fontSize: 12, color: Colors.grey)),
              onTap: () {
                // Add navigation or action here
              },
            ),
          ),
          // Call history section
          SizedBox(height: 24.0),
          Text(
            'Call history',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 16.0),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Choose how to call from call history'),
              subtitle: Text('Tap on call history to call', style: TextStyle(fontSize: 12, color: Colors.grey)),
              onTap: () {
                // Add navigation or action here
              },
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Change', style: TextStyle(color: Color(0xFF1E88E5))),
              onTap: () {
                // Add navigation or action here
              },
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: SwitchListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Group calls in call history'),
              subtitle: Text('Calls from the same number will be merged', style: TextStyle(fontSize: 12, color: Colors.grey)),
              value: _groupCalls,
              onChanged: (value) {
                setState(() {
                  _groupCalls = value;
                });
              },
              activeColor: Color(0xFF1E88E5),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: SwitchListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Show frequently called contacts'),
              value: _showFrequentContacts,
              onChanged: (value) {
                setState(() {
                  _showFrequentContacts = value;
                });
              },
              activeColor: Color(0xFF1E88E5),
            ),
          ),
          // Phone calls section
          SizedBox(height: 24.0),
          Text(
            'Phone calls',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 16.0),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: SwitchListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Announce phone calls'),
              subtitle: Text("Caller's name will be read out loud for incoming calls", style: TextStyle(fontSize: 12, color: Colors.grey)),
              value: _announceCalls,
              onChanged: (value) {
                setState(() {
                  _announceCalls = value;
                });
              },
              activeColor: Color(0xFF1E88E5),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Try it', style: TextStyle(color: Color(0xFF1E88E5))),
              onTap: () {
                // Add navigation or action here
              },
            ),
          ),
          // Call decline messages section
          SizedBox(height: 24.0),
          Text(
            'Call decline messages',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 16.0),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Decline Incoming calls with custom messages'),
              subtitle: Text(' ', style: TextStyle(fontSize: 12, color: Colors.grey)),
              onTap: () {
                // Add navigation or action here
              },
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Edit call decline messages', style: TextStyle(color: Color(0xFF1E88E5))),
              onTap: () {
                // Add navigation or action here
              },
            ),
          ),
          // Dial pad section
          SizedBox(height: 24.0),
          Text(
            'Dial pad',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 16.0),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Dial pad feedback'),
              subtitle: Text('Vibrate only', style: TextStyle(fontSize: 12, color: Colors.grey)),
              onTap: () {
                // Add navigation or action here
              },
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Speed dial'),
              subtitle: Text('Edit', style: TextStyle(fontSize: 12, color: Colors.grey)),
              onTap: () {
                // Add navigation or action here
              },
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: SwitchListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Dial assist'),
              subtitle: Text('Dial assist automatically determines the correct international or local prefix when dialling', style: TextStyle(fontSize: 12, color: Colors.grey)),
              value: _dialAssist,
              onChanged: (value) {
                setState(() {
                  _dialAssist = value;
                });
              },
              activeColor: Color(0xFF1E88E5),
            ),
          ),
          // Notifications section
          SizedBox(height: 24.0),
          Text(
            'Notifications',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 16.0),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: SwitchListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Call alert notifications'),
              subtitle: Text('Get a notification when someone is about to call you', style: TextStyle(fontSize: 12, color: Colors.grey)),
              value: _callAlert,
              onChanged: (value) {
                setState(() {
                  _callAlert = value;
                });
              },
              activeColor: Color(0xFF1E88E5),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: SwitchListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Missed call notifications'),
              subtitle: Text('See names and photos on missed calls', style: TextStyle(fontSize: 12, color: Colors.grey)),
              value: _missedCallNotif,
              onChanged: (value) {
                setState(() {
                  _missedCallNotif = value;
                });
              },
              activeColor: Color(0xFF1E88E5),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: SwitchListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text('Remind me of missed calls'),
              subtitle: Text('Get a reminder when you forget to call back a missed call', style: TextStyle(fontSize: 12, color: Colors.grey)),
              value: _remindMissedCalls,
              onChanged: (value) {
                setState(() {
                  _remindMissedCalls = value;
                });
              },
              activeColor: Color(0xFF1E88E5),
            ),
          ),
        ],
      ),
    );
  }
}