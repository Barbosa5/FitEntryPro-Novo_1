import 'package:parking/model/db_helper.dart';
import 'package:parking/model/entradas.dart';

class EntradasRepository {
  static const String _table = 'entradas';
  static Future<int> insert(Entradas entradas) async {
    var db = await DbHelper.getConnection();
    return db.insert(_table, entradas.toMap());
  }

  static Future<List<Entradas>> findAll() async {
    var db = await DbHelper.getConnection();
    var result = await db.query('entradas');
    return result.map(
      (item) => Entradas.fromMap(item),
    ).toList();
  }
}