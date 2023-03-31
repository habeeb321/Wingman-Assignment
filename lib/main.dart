import 'package:flutter/material.dart';
import 'package:wingman_assignment/screens/mobile_screen/controller/mobile_provider.dart';
import 'package:wingman_assignment/screens/mobile_screen/view/mobile_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MobileProvider>(
            create: (context) => MobileProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MobileScreen(),
      ),
    );
  }
}
