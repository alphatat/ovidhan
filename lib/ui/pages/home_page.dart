import 'package:flutter/material.dart';
import 'package:ovidhan/ui/pages/details_page.dart';
import 'package:ovidhan/ui/widgets/search_capsule.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:provider/provider.dart';
import 'package:ovidhan/theme/theme_provider.dart';
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

  void _onQueryChangeJ(String query) {
    if (query.isEmpty) return;
    int index = _allShobdo.indexWhere((item) => item.word.startsWith(query));

    if (index != -1) {
      _scrollControl.jumpTo(index: index);
    }
  }

  void _onQueryChangeS(String query) {
    if (query.isEmpty) return;

    int index = _allShobdo.indexWhere((item) => item.word.startsWith(query));

    if (index != -1) {
      _scrollControl.scrollTo(
        index: index,
        duration: Duration(seconds: 2),
        curve: Curves.decelerate,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final jumpTo = themeProvider.jumpTo;

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
        backgroundColor: colorScheme.primaryContainer,
        title: const Text(
          'অভিধান',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/settings'),
            icon: const Icon(Icons.menu),
          ),
        ],
      ),

      body: Column(
        children: [
          SearchCapsule(
            onSearch: jumpTo ? _onQueryChangeJ : _onQueryChangeS,
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
