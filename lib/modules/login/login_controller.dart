import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String loginRedirectHelper(bool _isFuncionario, String email, String senha){
  if(_isFuncionario){
    // PESQUISA NO BANDO DE FUNCIONARIO / ADMIN
  
  if(email.compareTo('admin') == 0 && senha.compareTo('admin') == 0){
    return '/home_page_admin';
  }
    return '/home_page_funcionario';
  }
  return '/home_page_aluno';
}