import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'view_ticket.dart';

String ticketNumber = '';
TextEditingController _ticketNumber = TextEditingController();
String urgentLevel = '';
TextEditingController _urgentLevel = TextEditingController();
String name = '';
TextEditingController _name = TextEditingController();
String surname = '';
TextEditingController _surname = TextEditingController();
String email = '';
TextEditingController _email = TextEditingController();
String request = '';
TextEditingController _request = TextEditingController();
String company = '';
TextEditingController _company = TextEditingController();
String description = '';
TextEditingController _description = TextEditingController();
String branch = '';
TextEditingController _branch = TextEditingController();
String grade = '';
TextEditingController _grade = TextEditingController();
String status = '';
TextEditingController _status = TextEditingController();

class MainCreateTicket extends StatefulWidget {
  @override
  CreateTicket createState() => CreateTicket();
}

class CreateTicket extends State<MainCreateTicket> {
  //file upload
  Future UploadFile() async {
    FilePickerCross myFile = await FilePickerCross.importFromStorage(
        type: FileTypeCross.any, fileExtension: 'txt, md');
    myFile.saveToPath(path: '/myfiles');

    myFile.exportToStorage();

    myFile.exportToStorage(subject: 'File', text: 'Here is the file');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket Page'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _ticketNumber,
              decoration: InputDecoration(labelText: 'Ticket Number'),
              onChanged: (value) => ticketNumber = value,
              inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _urgentLevel,
              decoration: InputDecoration(labelText: 'Urgent Level'),
              onChanged: (value) => urgentLevel = value,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _name,
              decoration: InputDecoration(labelText: 'First Name'),
              onChanged: (value) => name = value,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _surname,
              decoration: InputDecoration(labelText: 'Surname'),
              onChanged: (value) => surname = value,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _email,
              decoration: InputDecoration(labelText: 'Email Address'),
              onChanged: (value) => email = value,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _request,
              decoration: InputDecoration(labelText: 'Request'),
              onChanged: (value) => request = value,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _description,
              decoration: InputDecoration(labelText: 'Description'),
              onChanged: (value) => description = value,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _company,
              decoration: InputDecoration(labelText: 'Company Name'),
              onChanged: (value) => company = value,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _branch,
              decoration: InputDecoration(labelText: 'Branch Name'),
              onChanged: (value) => branch = value,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _grade,
              decoration: InputDecoration(labelText: 'Technician Grade'),
              onChanged: (value) => grade = value,
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: TextFormField(
              controller: _status,
              decoration: InputDecoration(labelText: 'Assignment Status'),
              onChanged: (value) => status = value,
            ),
          ),
          new Container(
              margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
              padding: new EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(30),
                child: Text('Upload File'),
                onPressed: () {
                  UploadFile();
                },
              )),
          new Container(
            margin: new EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: new EdgeInsets.all(10),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainViewTicket(
                              ticketNumber: ticketNumber,
                              urgentLevel: urgentLevel,
                              name: name,
                              surname: surname,
                              email: email,
                              request: request,
                              description: description,
                              company: company,
                              branch: branch,
                              grade: grade,
                              status: status,
                            )));
              },
              height: 50,
              color: Colors.black,
              child: Text(
                'SUBMIT',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
