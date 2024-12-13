import 'dart:developer';

import 'package:inventory_app/features/items/domain/entities/item_entity.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._internal();
  DatabaseService._internal();

  Database? _database;
  Future deleteDatabase() async => deleteDatabase(
    
  ); 
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'inventory.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute(
          '''
          CREATE TABLE inventory (
            COMAPNYNO TEXT,
            STOCKCODE TEXT,
            ItemOCode TEXT,
            QTY TEXT,
            ITEMNO TEXT,
            NAME TEXT,
            CATEOGRYID TEXT,
            ItemK TEXT,
            BARCODE TEXT,
            MINPRICE TEXT,
            ITEML TEXT,
            ISSUSPENDED TEXT,
            F_D TEXT,
            ITEMHASSERIAL TEXT,
            ITEMPICSPATH TEXT,
            TAXPERC TEXT,
            ISAPIPIC TEXT,
            LSPRICE TEXT
          )
        ''',
        );
      },
    );
  }

  Future<void> insertData(List<ItemEntity> data) async {
    final db = await database;
    try {
      await db.transaction((txn) async {
        await txn.delete('inventory'); // Clear table before inserting
        for (var item in data) {
          await txn.insert('inventory', item.toMap());
        }
      });
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  Future<List<ItemEntity>> fetchData() async {
    final db = await database;
    final result = await db.query('inventory');
    return result.isNotEmpty
        ? result.map((map) => ItemEntity.fromMap(map)).toList()
        : [];
  }
}
