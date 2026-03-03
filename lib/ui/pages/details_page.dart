import 'package:flutter/material.dart';
import '../../models/shobdo.dart'; //my class for the words object structure

import 'package:url_launcher/url_launcher.dart';

class DetailsPage extends StatelessWidget {
  final Shobdo retData;

  const DetailsPage({super.key, required this.retData});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.onPrimary,
        title: Text(
          retData.word,
        ), //TO:DO: entend the details page with next and previous page buttons// and to add more functions like word lookup history
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              retData.word,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: colorScheme.primary,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (retData.pronun != null)
                  Text(
                    "/${retData.pronun}/",
                    style: const TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),

                if (retData.pos != null)
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.primary.withAlpha(50),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      retData.pos!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.primary,
                      ),
                    ),
                  ),
              ],
            ),

            const Divider(height: 40),

            Text("${retData.meaning}", style: const TextStyle(fontSize: 20)),

            const Divider(height: 20),

            Text(retData.engmean ?? '', style: const TextStyle(fontSize: 18)),

            const Divider(height: 20),

            Text(
              ('▶  ') + (retData.examples ?? ''),
              style: const TextStyle(fontSize: 18),
            ),

            const Divider(height: 20),

            Text(
              "||${retData.origlan ?? '/[ /]'} | ${retData.origetym ?? ''} ||",

              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 250),

            Container(
              // credits and support container
              alignment: Alignment.bottomCenter,
              child: const Text(
                'অভিধান ভালো লাগলে সাহায্য করুন \n নিচের লিঙ্কের মাধ্যমে',
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ElevatedButton.icon(
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
                    final uri = Uri.parse(
                      'https://www.supportkori.com/alphatat',
                    );
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(
                        uri,
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
