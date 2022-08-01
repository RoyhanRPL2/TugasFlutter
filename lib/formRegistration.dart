import 'package:firstapp/SecondRoute.dart';
import 'package:flutter/material.dart';

class formRegistration extends StatefulWidget {
  const formRegistration({Key? key}) : super(key: key);

  @override
  State<formRegistration> createState() => _formRegistrationState();
}

class _formRegistrationState extends State<formRegistration> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  int id = 1;
  String myPhone = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Registration"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: ctrUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            Container(
              height: 10,
            ),
            TextField(
              controller: ctrPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Pilih Jenis Kelamin",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      id = 1;
                    });
                  },
                ),
                Text("Male")
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      id = 2;
                    });
                  },
                ),
                Text("Female")
              ],
            ),
            Text("phone :  " + myPhone),
            ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()),
                  );

                  print('hasil input phone number : ' + result.toString());
                  setState(() {
                    myPhone = result.toString();
                  });
                  SizedBox(
                    height: 20,
                  );
                },
                child: Text("phone number")),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 200,
                child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
