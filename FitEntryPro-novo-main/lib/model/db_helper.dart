import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> getConnection() async {
    const String dbName = "FitEntryPro.db";
    final String dbPath = await getDatabasesPath();
    return await openDatabase(
      '$dbPath$dbName',
      version: 1,
      onCreate: (db, _) async {
        await db.execute(
          "CREATE TABLE entradas (idade CHAR(2) NOT NULL,name CHAR(10) NOT NULL,entryTime CHAR(5) NOT NULL;");
      },
    );
  }
}
