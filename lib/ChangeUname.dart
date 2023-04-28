import 'package:flutter/material.dart';
import 'main.dart';

class ChangeUname extends StatefulWidget {
  @override
  State<ChangeUname> createState() => _ChangeUname();
}

class _ChangeUname extends State<ChangeUname> {
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(title: Text(user_name)),
        body: Form(
            key: _formKey,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "New user name"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter new name';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const SizedBox(height: 20),
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        user_name = usernameController.text;
                                      });
                                    },
                                    child: Text('Change'))
                              ])),
                    ]))));
  }
}
