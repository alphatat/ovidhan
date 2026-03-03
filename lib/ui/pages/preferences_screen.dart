import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ovidhan/theme/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class PreferencesScreen extends StatelessWidget {
  const PreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final colors = [
      Colors.cyanAccent,
      Colors.greenAccent,
      Colors.lightGreenAccent,
      Colors.redAccent,
      Colors.blueAccent,
      Colors.pinkAccent,
      Colors.purpleAccent,
      Colors.deepPurpleAccent,
      Colors.blueGrey,
      Colors.tealAccent,
      Colors.amberAccent,
      Colors.lightBlueAccent,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(r'<#মাল-মশলা#>'),
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            value: themeProvider.isDark,
            onChanged: themeProvider.toggleMode,
            title: const Text('কালা মোড'),
            subtitle: const Text('Toggle Dark Theme'),
            activeThumbColor: colorScheme.primary,
            secondary: Icon(Icons.dark_mode, color: colorScheme.primary),
          ),

          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'প্রিয় রং',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              spacing: 10,
              runSpacing: 5,

              children: colors.map((color) {
                final isSelected =
                    themeProvider.accentColor.toARGB32() == color.toARGB32();
                return GestureDetector(
                  onTap: () => themeProvider.setAccentColor(color),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isSelected
                            ? (themeProvider.isDark
                                  ? Colors.white
                                  : Colors.black)
                            : Colors.transparent,
                        width: 5,
                      ),
                    ),
                    child: isSelected
                        ? const Icon(Icons.check, color: Colors.white)
                        : null,
                  ),
                );
              }).toList(),
            ),
          ),

          const Divider(),

          SwitchListTile(
            value: themeProvider.jumpTo,
            onChanged: themeProvider.toggleScrollMode,
            title: const Text('লাফ দিয়ে যায়?'),
            subtitle: const Text('Jump to scroll position?'),
            activeThumbColor: colorScheme.primary,
            secondary: Icon(
              Icons.keyboard_double_arrow_down,
              color: colorScheme.primary,
            ),
          ),
          const Divider(),
          const SizedBox(height: 200),
          const Text(
            'Do you find Ovidhan helpful?\n Want to help us to work more?\n Motivate us with your support and enthusiasm',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber.shade500,
              ),
              icon: const Icon(
                Icons.coffee_sharp,
                color: Color.fromARGB(255, 65, 53, 14),
                size: 30,
              ),
              label: const Text(
                'SupportKori',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onPressed: () async {
                final uri = Uri.parse('https://www.supportkori.com/alphatat');
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
            ),
          ),
          const SizedBox(height: 20),

          const Divider(),
          const Text(
            'With Love from Alphatat and M4dsur\n © MadLeaf Studios',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
