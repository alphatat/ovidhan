import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ovidhan/theme/theme_provider.dart';

class PreferencesScreen extends StatelessWidget {
  const PreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
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
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(r'<#মাল মশলা#>'),
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
            padding: EdgeInsets.all(16.0),
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
        ],
      ),
    );
  }
}
