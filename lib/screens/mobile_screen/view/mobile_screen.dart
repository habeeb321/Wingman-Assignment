import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wingman_assignment/core/constants.dart';
import 'package:wingman_assignment/screens/mobile_screen/controller/mobile_provider.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MobileProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: provider.mobileController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Mobile No.",
                  fillColor: Colors.white70,
                ),
              ),
              kHeight10,
              ElevatedButton(
                onPressed: () {
                  provider.mobileApiCall(context);
                },
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
