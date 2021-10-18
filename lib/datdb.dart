import 'package:dart_banco_dados/database.dart';

Future<void> main() async {
  final database = Database();
  var mysqlConnection = await database.openConnection();

  //query -> espera 2 parametros, o primeiro e uma instrução tipo 'SELECT FROM alunos', e o outro e uma lista de parametros caso tenha []
  var resultado = await mysqlConnection.query(
    'insert into alunos(id, nome) values (?, ?)',
    [
      null,
      'Vitor',
    ],
  );

  print(resultado.affectedRows);

  //apenas para saber se esta tudo funcionando
  // print(mysqlConnection.toString());
}
