import 'package:coliseum_fit_aluno/models/user.dart';

User user1 = User(
  nome: "Pedro",
  email: "pedro@gmail.com",
  senha: "123",
  cpf: "11335961920",
  telefone: "32988331775",
  peso: 52.90,
  altura: 1.72,
  funcionario: false,
  );

User user2 = User(
  nome: "Vinicius",
  email: "vinicius@gmail.com",
  senha: "123",
  cpf: "12312312312",
  telefone: "32988331875",
  peso: 62.90,
  altura: 1.74,
  funcionario: false,
  );

User instrutor = User(
  nome: "Joao",
  email: "joao@gmail.com",
  senha: "123",
  cpf: "098765432190",
  telefone: "32988331875",
  peso: 74.90,
  altura: 1.76,
  funcionario: true,
);

User adm = User(
  nome: "ADM",
  email: "adm@adm.com",
  senha: "123",
  cpf: "10293485670",
  telefone: "32985631875",
  peso: 74.90,
  altura: 1.76,
  funcionario: true,);

List<User> funcionarios = [adm, instrutor];
List<User> clientes = [user1, user2];
List<User> allUsers = funcionarios + clientes;

int getFuncionarioIndex({required String email, required String senha}){
    for(int i = 0; i < funcionarios.length ; i++){
    if(funcionarios[i].email == email && funcionarios[i].senha == senha){
      return i;
    }
  }
  return -1;
}
User getFuncionario(int index){
  return funcionarios[index];
}

int getClientesIndex({required String email, required String senha}){
    for(int i = 0; i < clientes.length ; i++){
    if(clientes[i].email == email && clientes[i].senha == senha){
      return i;
    }
  }

  return -1;
}
User getCliente(int index){
  return clientes[index];
}

registerUser({required String nome, required String email, required String telefone, required String cpf, required String senha}){

  User user = User(nome: nome, cpf: cpf, email: email, telefone: telefone, senha: senha, peso: 0, altura: 0, funcionario: false);
  clientes.add(user);
}
