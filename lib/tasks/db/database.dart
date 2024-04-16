import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../data/local_model.dart';



part 'database.g.dart';

@DriftDatabase(tables: [Tasks])
class ValueChainDB extends _$ValueChainDB {
  ValueChainDB() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'valuechain_db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}