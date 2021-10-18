import 'package:mysql1/mysql1.dart';

class Database {
  //*Abrindo conexao com o mysql
  Future<MySqlConnection> openConnection() {
    final settings = ConnectionSettings(
      //Localhost e port 3306 ja são parametros default no proprio package mysql1 (nem precisaria colocar)
      host: 'localhost',
      port: 45544,
      user: 'root',
      password: 'Vrhythms69%',
      db: 'dart',
    );

    return MySqlConnection.connect(settings);
  }
}
