import 'package:coliseum_fit_aluno/models/IUser.dart';
import 'package:coliseum_fit_aluno/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

import '../../shared/themes/app_text_styles.dart';

class ListaAlunos extends StatefulWidget {
  const ListaAlunos({Key? key}) : super(key: key);

  @override
  State<ListaAlunos> createState() => _ListaAlunosState();
}

class _ListaAlunosState extends State<ListaAlunos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: ListView.builder(
          itemCount: clientes.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ListTile(
              title: Text(
                clientes[index].nome,
                style: AppTextStyles.titleListTileFicha,
              ),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/usuario.png")),
              trailing: 
                CircleAvatar(radius: 26, backgroundColor: AppColors.backgroundButton, child: Icon(Icons.paste, size: 26)),
            ),
          ),
        ));
  }
}
