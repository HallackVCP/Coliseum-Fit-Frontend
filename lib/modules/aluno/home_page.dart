import 'package:coliseum_fit/shared/themes/app_text_styles.dart';
import 'package:coliseum_fit/shared/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import '../../shared/themes/app_colors.dart';
import '../../shared/widgets/drawer.dart';

class HomePageAluno extends StatefulWidget {
  const HomePageAluno({Key? key}) : super(key: key);

  @override
  State<HomePageAluno> createState() => _HomePageAlunoState();
}

class _HomePageAlunoState extends State<HomePageAluno> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        widgets: [
          drawerOption(title: "Ficha", icon: Icons.paste),
          drawerOption(title: "Minha saude", icon: Icons.medical_information),
          drawerOption(title: "Matricula", icon: Icons.calendar_month),
          Divider(),
          drawerOption(title: "Editar perfil", icon: Icons.edit),
          drawerOption(title: "Sair", icon: Icons.exit_to_app),
          Divider(),
        ],
      ),
      drawerScrimColor: AppColors.background,
      backgroundColor: AppColors.background,
      appBar: AppBar(
          backgroundColor: AppColors.background,
          shadowColor: AppColors.primary,
          toolbarHeight: 200,
          leading: Builder(
              builder: (context) => IconButton(
                    icon: Icon(
                      Icons.menu_rounded,
                      color: AppColors.primary,
                    ),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  )),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bom dia, João!",
                style: AppTextStyles.titleHome,
              ),
              Text(DateTime.now().day.toString() + " / " + DateTime.now().month.toString(), style: AppTextStyles.loginSimple,),
            ],
          ),
          actions: const [
            CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.primary,
              child: CircleAvatar(
                  radius: 59,
                  backgroundImage: AssetImage(
                    "assets/images/usuario.png",
                  )),
            ),
          ]),
    );
  }
}
