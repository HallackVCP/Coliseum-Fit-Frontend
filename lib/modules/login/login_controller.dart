import 'package:coliseum_fit_aluno/models/IUser.dart';
import 'package:flutter/material.dart';

import '../../models/user.dart';
import '../home/home_page.dart';

void loginRedirect({required TextEditingController email, required TextEditingController senha, required BuildContext context, required bool funcionario}){
  
  if(funcionario){
    // VERIFICAR SE É O ADM
    if(email.text == "adm@adm.com" && senha.text == "123"){
      // VA PARA PAGINA DE ADM
      Navigator
        .pushReplacement(context, MaterialPageRoute
        (builder: ((context) => HomePage(user: adm))));
        senha.value = TextEditingValue.empty;
    }

    else{
      int indexUser = getFuncionarioIndex(email: email.text, senha: senha.text);
      
      if(indexUser != -1){
        Navigator
        .pushReplacement(context, MaterialPageRoute
        (builder: ((context) => HomePage(user:  getFuncionario(indexUser)))));
        senha.value = TextEditingValue.empty;
      }
    }
    
  }
  else{
    if(email.text.isNotEmpty && senha.text.isNotEmpty){

      int indexUser = getClientesIndex(email: email.text, senha: senha.text);

      if(indexUser != -1){
        Navigator
        .pushReplacement(context, MaterialPageRoute
        (builder: ((context) => HomePage(user: getCliente(indexUser)))));
        senha.value = TextEditingValue.empty;
      }
    }
  }
}