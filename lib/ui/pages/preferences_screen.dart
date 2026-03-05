import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ovidhan/theme/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_markdown/flutter_markdown.dart';

class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({super.key});

  @override
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  String _markdownContent = '';

  @override
  void initState() {
    super.initState();
    _loadContent();
  }

  Future<void> _loadContent() async {
    final prefs = await SharedPreferences.getInstance();
    final cached = prefs.getString('cached_credits_md') ?? '';
    if (cached.isNotEmpty) setState(() => _markdownContent = cached);
    try {
      final response = await http.get(
        Uri.parse(
          'https://raw.githubusercontent.com/alphatat/ovidhan/refs/heads/main/static_content/credit_pref.md',
        ),
      );
      if (response.statusCode == 200) {
        await prefs.setString('cached_credits_md', response.body);
        setState(() => _markdownContent = response.body);
      }
    } catch (_) {}
  }

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

          SwitchListTile(
            value: themeProvider.isDivider,
            onChanged: themeProvider.toggleShowDivider,
            title: const Text('লিস্টের মাঝে ডিভাইডার?'),
            subtitle: const Text('Show divider in homepage?'),
            activeThumbColor: colorScheme.primary,
            secondary: Icon(Icons.view_list_sharp, color: colorScheme.primary),
          ),
          const Divider(),

          const SizedBox(height: 200),
          const Text(
            'Do you find Ovidhan helpful?\n Motivate us with a little support',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MarkdownBody(
              data: _markdownContent,
              onTapLink: (text, url, title) {
                if (url != null) {
                  launchUrl(
                    Uri.parse(url),
                    mode: LaunchMode.externalApplication,
                  );
                }
              },
            ),
          ),
          // const Divider(),
          // const Text(
          //   'With Love from Alphatat and M4dsur\n © MadLeaf Studios',
          //   textAlign: TextAlign.center,
          // ),
        ],
      ),
    );
  }
}
