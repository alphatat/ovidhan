import 'package:flutter/material.dart';
import 'models/shobdo.dart';

class DetailsPage extends StatelessWidget {
  final Shobdo retData;

  const DetailsPage({super.key, required this.retData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(retData.word),
        backgroundColor: Colors.blueGrey.shade50,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              retData.word,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),

            if (retData.pronun != null)
              Text(
                "/${retData.pronun}/",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade900,
                  fontStyle: FontStyle.italic,
                ),
              ),

            const SizedBox(height: 10),

            if (retData.pos != null)
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  retData.pos!,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            const Divider(height: 40),

            Text(
              "${retData.meaning}",
              style: TextStyle(fontSize: 20, color: Colors.blueGrey.shade900),
            ),

            Text(
              retData.engmean ?? '',
              style: TextStyle(fontSize: 18, color: Colors.blueGrey.shade700),
            ),

            const Divider(height: 20),

            Text(
              retData.examples ?? '',
              style: TextStyle(fontSize: 18, color: Colors.blueGrey.shade700),
            ),

            const SizedBox(height: 10),

            Text(
              "${retData.origlan ?? '/[ /]'} | ${retData.origetym ?? ''}",

              style: TextStyle(fontSize: 16, color: Colors.blueGrey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
