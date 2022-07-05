import 'package:coliseum_fit/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class HomePageFuncionario extends StatelessWidget {
  const HomePageFuncionario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text("Pagina do funcionario!"),),
    );
  }
}