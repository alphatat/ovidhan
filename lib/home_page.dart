import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ovidhan/details_page.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'models/shobdo.dart';
import 'main.dart';

class OvidhanHomePage extends StatefulWidget {
  const OvidhanHomePage({super.key});

  @override
  State<OvidhanHomePage> createState() => _OvidhanHomePageState();
}

class _OvidhanHomePageState extends State<OvidhanHomePage> {
  final ItemScrollController _scrollControl = ItemScrollController();

  List<Shobdo> _allShobdo = [];

  @override
  void initState() {
    super.initState();
    _loadAllShobdo();
  }

  void _loadAllShobdo() async {
    final data = await dictService.getAllShobdoAlpha();
    setState(() {
      _allShobdo = data;
    });
  }

  void _onQueryChange(String query) {
    if (query.isEmpty) return;
    int index = _allShobdo.indexWhere((item) => item.word.startsWith(query));

    if (index != -1) {
      _scrollControl.jumpTo(index: index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: "¿গো + এষণা?",
            suffixIcon: Icon(CupertinoIcons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),

          onChanged:
              _onQueryChange, // Call the search function when the query changes
        ),
      ),

      body: _allShobdo.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ScrollablePositionedList.builder(
              itemCount: _allShobdo.length,
              itemScrollController: _scrollControl,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_allShobdo[index].word),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(retData: _allShobdo[index]),
                      ),
                    ); // Handle tap on the word, e.g., navigate to a detail page
                  },
                );
              },
            ),
    );
  }
}
