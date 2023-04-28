import 'package:flutter/material.dart';

class SubmitLocationPage extends StatelessWidget {
  const SubmitLocationPage({super.key, required this.location});
  final String location;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            appBar: AppBar(title: const Text('')),
            body: Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "Driver will arrive at",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            "$location",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ))
                ]),
              ),
            )));
  }
}
