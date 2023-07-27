import 'package:flutter/material.dart';
import 'package:generic_social_widgets/generic_social_widgets.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
          builder: (context) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                  Text('DEMO APP'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChatBubble(
                      text: 'Howdy!',
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ChatTextInput(),
                )
              ],
            ),
          ),
        );
      })
    );
  }
}
