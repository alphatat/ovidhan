import 'package:flutter/material.dart';
import 'package:ovidhan/ui/pages/details_page.dart';
import 'package:ovidhan/ui/widgets/search_capsule.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../models/shobdo.dart';
import '../../main.dart';

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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      // appBar: AppBar(
      //   title: TextField(
      //     decoration: const InputDecoration(
      //       hintText: "¿গো + এষণা?",
      //       suffixIcon: Icon(CupertinoIcons.search),
      //       border: OutlineInputBorder(
      //         borderRadius: BorderRadius.all(Radius.circular(8.0)),
      //       ),
      //     ),

      //     onChanged:
      //         _onQueryChange, // Call the search function when the query changes
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: colorScheme.onPrimary,
        title: const Text('অভিধান'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/settings'),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),

      body: Column(
        children: [
          SearchCapsule(
            onSearch: _onQueryChange,
            onSettingsTap: () => Navigator.pushNamed(context, '/settings'),
          ),
          Expanded(
            child: _allShobdo.isEmpty
                ? const Center(child: Icon(Icons.book))
                : ScrollablePositionedList.builder(
                    //           physics: AlwaysScrollableScrollPhysics(),
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
          ),
        ],
      ),
    );
  }
}
