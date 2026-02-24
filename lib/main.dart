import 'package:flutter/material.dart';
import 'services/dict_service.dart';
import 'models/shobdo.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'home_page.dart';

//declaration of global variables
final dictService = DictService();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dictService.init();

  runApp(const Ovidhan());
}

class Ovidhan extends StatelessWidget {
  const Ovidhan({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ovidhan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const OvidhanHomePage(),
    );
  }
}
