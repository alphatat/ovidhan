import 'package:flutter/material.dart';
import 'package:ovidhan/theme/app_theme.dart';
import 'package:ovidhan/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'services/dict_service.dart';
import 'ui/pages/home_page.dart';
import 'package:ovidhan/ui/pages/preferences_screen.dart';

//declaration of global variables
final dictService = DictService();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dictService.init();

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const Ovidhan(),
    ),
  );
}

class Ovidhan extends StatelessWidget {
  const Ovidhan({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Ovidhan',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.getTheme(
            themeProvider.accentColor,
            themeProvider.isDark,
          ),
          home: const OvidhanHomePage(),
          routes: {'/settings': (context) => const PreferencesScreen()},
        );
      },
    );
  }
}
