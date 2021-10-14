import 'package:flutter/material.dart';
import 'package:mac_vm_installer/responsive/responsive.dart';
import 'package:rive/rive.dart';
import 'package:yaru/yaru.dart' as yaru;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linux MacVM Installerm',
      theme: yaru.lightTheme,
      darkTheme: yaru.darkTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linux MacVM Installer"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(
            flex: 1,
            child: RiveAnimation.asset("assets/rive/macos.riv"),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
              flex: 2,
              child: Text(
                "Welcome to MacVM \nInstaller",
                style: TextStyle(fontSize: isDesktop(context) ? 48 : 20),
              ))
        ],
      ),
    );
  }
}
