import 'package:isar/isar.dart';

part 'shobdo.g.dart';

@collection
class Shobdo {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  late String word;

  String? pronun;
  String? origlan;
  String? origetym;
  String? pos;
  String? meaning;

  String? examples;

  String? engmean;
}
