import 'package:coliseum_fit_aluno/models/IFicha.dart';
import 'package:coliseum_fit_aluno/models/ficha.dart';

class User {
  late String nome;
  late double peso = 0;
  late double altura = 0;
  late DateTime dataNascimento;
  late String cpf;
  late String email;
  late String telefone;
  late String senha;
  late bool funcionario = false;

  User({required this.nome, required this.cpf, required this.email,required this.telefone, required this.senha, double? peso, double? altura, DateTime? dataNascimento, bool ?funcionario})
  {
    this.funcionario = funcionario!;
    this.peso = peso!;
    this.altura = altura!;
    this.funcionario = funcionario;
    this.dataNascimento = DateTime.now();
  }
  

}
