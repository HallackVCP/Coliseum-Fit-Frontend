import 'package:coliseum_fit_aluno/modules/ficha/ficha_page.dart';
import 'package:coliseum_fit_aluno/modules/instrutor/lista_alunos.dart';
import 'package:coliseum_fit_aluno/modules/login/login_page.dart';
import 'package:coliseum_fit_aluno/modules/minha_saude/minha_saude_page.dart';
import 'package:coliseum_fit_aluno/modules/planos/planos_page.dart';
import 'package:coliseum_fit_aluno/shared/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

import '../../models/user.dart';
import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  final User user;
  const HomePage({Key? key, int indexPageDrawer = 0, required this.user}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int _indexPageDrawer = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {


    Widget _controllerPageIndex(int _drawerItemIndex){
      switch(_drawerItemIndex){
        case 0:
          return FichaPage();

        case 1:
          return MinhaSaudePage(user: widget.user,);

        case 2:
          return PlanosPage();

        default:
          return widget.user.funcionario ? ListaAlunos() : _controllerPageIndex(_indexPageDrawer);
      }
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      drawerScrimColor: AppColors.background,
      drawer: Drawer(
        backgroundColor: AppColors.primary,
        child: SingleChildScrollView(
          child: Column(children: [
            drawerHeader(user: widget.user),
        
        InkWell(
          child: drawerOption(title: "Ficha", icon: Icons.paste),
            onTap: (){setState(() {
                _indexPageDrawer = 0;
                Navigator.pop(context);
              });},
        ),
        
        InkWell(
          child: drawerOption(title: "Minha saúde", icon: Icons.medical_information),
            onTap: (){setState(() {
                _indexPageDrawer = 1;
                Navigator.pop(context);
              });},
        ),
        
        InkWell(
          child: drawerOption(title: "Matricula", icon: Icons.calendar_month),
            onTap: (){setState(() {
                _indexPageDrawer = 2;
                Navigator.pop(context);
              });},
        ),
        
        Divider(),
        
        InkWell(
          child: drawerOption(title: "Sair", icon: Icons.exit_to_app),
            onTap: (){setState(() {
                _indexPageDrawer = 0;
                Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => LoginPage())));
              });},
        ),

        Divider(),
        
        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32),
              child: TextButton(
                child: Text("Fechar", style: AppTextStyles.titleDrawer,), onPressed: (){Navigator.pop(context);},)
            ),
        
          ]),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 170,
        title: RichText(text: TextSpan(
          children: [
            TextSpan(text: "Bom dia, ",  style: AppTextStyles.titleHomeSecondary),
            TextSpan(text: widget.user.nome, style: AppTextStyles.titleHome),
            TextSpan(text: " !",  style: AppTextStyles.titleHomeSecondary),
          ]
        ),),
        actions: [
          CircleAvatar(
            radius: 60,
            backgroundColor: AppColors.primary,
            child: CircleAvatar(
              radius: 59,
              backgroundImage: AssetImage("assets/images/usuario.png"),
            ),
          )
        ],
      ),
      body:  widget.user.funcionario ? ListaAlunos() : _controllerPageIndex(_indexPageDrawer),

    );
  }
}