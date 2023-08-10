import 'package:flutter/material.dart';
import 'package:flutter_gauges_states/bloc_pattern/imc_bloc_pattern_page.dart';
import 'package:flutter_gauges_states/setState/imc_setstae_page.dart';
import 'package:flutter_gauges_states/value_notifier/value_notifier_page.dart';

import 'change_notifier/imc_change_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToPage(context, ImcSetstaePage()),
              child: Text('SetState'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, ValueNotifierPage()),
              child: Text('ValueNotifier'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, ChangeNotifierPage()),
              child: Text('ChangeNotifier'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, ImcBlocPatternPage()),
              child: Text('Bloc Pattern (Streams)'),
            ),
          ],
        ),
      ),
    );
  }
}
