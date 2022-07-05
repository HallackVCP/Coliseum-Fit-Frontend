import 'package:coliseum_fit/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../shared/themes/app_colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      backgroundColor: AppColors.primary,
      child:Center(
        child:
          SingleChildScrollView(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    drawerHeader(),
                    Divider(),
                    drawerOption(title: "Visualizar alunos", icon: Icons.group),
                    drawerOption(title: "Minha saúde", icon: Icons.medical_information),
                    drawerOption(title: "Matrícula", icon: Icons.edit_calendar),
                    Divider(),
                    drawerOption(title: "Editar perfil", icon: Icons.edit),
                    Divider(),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28.0),
                      child: TextButton(onPressed: (() => Navigator.pop(context)), child: Text("Fechar", style: AppTextStyles.titleDrawer,),),
                    ),
                 

                ],),
            ),
          ),
      )
    );
  }

  Widget drawerOption({required String title, required IconData icon }){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: ListTile(
        leading: CircleAvatar(radius: 26, backgroundColor: AppColors.backgroundButton, child: Icon(icon, size: 26, color: AppColors.primary),),
        title: Text(title, style: AppTextStyles.titleDrawer,),
        ),
    );
  }

  

  Widget drawerHeader(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Column(children: [
        CircleAvatar(
          radius: 70,
          backgroundColor: AppColors.background,
          child: CircleAvatar(
            radius: 69,
            backgroundImage: AssetImage("assets/images/usuario.png"),
            )),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("João", style: AppTextStyles.titleDrawer,),
                Text("Desde: " + DateTime.now().day.toString() +" / " + DateTime.now().month.toString(),
                style: AppTextStyles.subtitleDrawer,)
              ],
            ),
          )
      ],),
    );
  }

}