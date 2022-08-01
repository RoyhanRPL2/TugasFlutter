import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  TextEditingController ctrPhone = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondRoute"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: ctrPhone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'input phone number',
              ),
            ),
            
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, ctrPhone.text);
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
