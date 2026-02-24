import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as p;
import '../models/shobdo.dart';

class DictService {
  late Isar isar;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    final dbPath = p.join(dir.path, 'default.isar');

    if (!File(dbPath).existsSync()) {
      ByteData data = await rootBundle.load('assets/default.isar');

      List<int> bytes = data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      );
      await File(dbPath).writeAsBytes(bytes);
    }

    isar = await Isar.open([ShobdoSchema], directory: dir.path);
  }

  // Stream<List<Shobdo>> magiSearch(String query) {
  //   if (query.isEmpty) {
  //     return isar.shobdos
  //         .where()
  //         .sortByWord()
  //         .limit(500)
  //         .watch(fireImmediately: true);
  //   } else {
  //     return isar.shobdos
  //         .filter()
  //         .wordStartsWith(query, caseSensitive: false)
  //         .sortByWord()
  //         .limit(500)
  //         .watch(fireImmediately: true);
  //   }
  // }

  Future<List<Shobdo>> getAllShobdoAlpha() async {
    return await isar.shobdos.where().sortByWord().findAll();
  }
}
