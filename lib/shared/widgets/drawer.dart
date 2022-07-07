import 'package:coliseum_fit/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'custom_widgets.dart';

class CustomDrawer extends StatelessWidget {
  List<Widget> widgets;
  CustomDrawer({
    Key? key,
    required this.widgets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(widgets.length * 50);
    return Drawer(
      width: 270,
      backgroundColor: AppColors.primary,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 50,),
            drawerHeader(),
            Divider(),
            
            SizedBox(
                height: (70.0 * widgets.length),
                child: Center(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widgets.length,
                    itemBuilder: (context, index) => widgets[index],
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22.0),
              child: TextButton(onPressed: (() => Navigator.pop(context)), child: Text("Fechar", style: AppTextStyles.titleDrawer,),),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
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
                Text(
                  "João",
                  style: AppTextStyles.titleDrawer,
                ),
                Text(
                  "Matricula vence dia: " +
                      DateTime.now().day.toString() +
                      " / " +
                      DateTime.now().month.toString(),
                  style: AppTextStyles.subtitleDrawer,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
