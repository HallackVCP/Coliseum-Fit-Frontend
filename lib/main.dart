import 'package:coliseum_fit/modules/admin/home_page.dart';
import 'package:coliseum_fit/modules/aluno/home_page.dart';
import 'package:coliseum_fit/modules/funcionario/home_page.dart';
import 'package:coliseum_fit/modules/login/cadastro_page.dart';
import 'package:coliseum_fit/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

import 'modules/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ColiseumFit',
      theme: ThemeData(
        floatingActionButtonTheme: floatingActionButtonCustomTheme,
        primarySwatch: MaterialCustomColor,
        secondaryHeaderColor: MaterialCustomColor,
      ),
      routes: {
        '/' : (context) => LoginPage(),
        '/home_page_funcionario' : (context) => HomePageFuncionario(),
        '/home_page_admin' : (context) => HomePageFuncionarioADM(),
        '/home_page_aluno' : (context) => HomePageAluno(),
        '/cadastro' : (context) => CadastroPage(),
      },
    );
  }
}
