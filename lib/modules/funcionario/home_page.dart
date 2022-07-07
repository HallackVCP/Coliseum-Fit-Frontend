import 'package:coliseum_fit/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../shared/themes/app_colors.dart';
import '../../shared/widgets/custom_widgets.dart';
import '../../shared/widgets/drawer.dart';

class HomePageFuncionario extends StatefulWidget {
  const HomePageFuncionario({Key? key}) : super(key: key);

  @override
  State<HomePageFuncionario> createState() => _HomePageFuncionario();
}

class _HomePageFuncionario extends State<HomePageFuncionario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      drawer: CustomDrawer(widgets: [
        drawerOption(title: "Visualizar alunos", icon: Icons.group),
        drawerOption(title: "Minha saúde", icon: Icons.medical_information),
        drawerOption(title: "Matrícula", icon: Icons.edit_calendar),
        Divider(),
        drawerOption(title: "Editar perfil", icon: Icons.edit),
        Divider(),
      ]),
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
              Text(
                DateTime.now().day.toString() +
                    " / " +
                    DateTime.now().month.toString(),
                style: AppTextStyles.loginSimple,
              ),
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
