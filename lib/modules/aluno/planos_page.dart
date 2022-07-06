import 'package:flutter/material.dart';

import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_text_styles.dart';

class PlanosPage extends StatefulWidget {
  const PlanosPage({Key? key}) : super(key: key);

  @override
  State<PlanosPage> createState() => _PlanosPageState();
}

class _PlanosPageState extends State<PlanosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.background, foregroundColor: AppColors.primary, title: Text("Planos"),),
      backgroundColor: AppColors.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home_page_aluno');
          },
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.background,
          label: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(width: 16),Text("Finalizar"), Icon(Icons.arrow_right)],
            ),
          )),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset("assets/images/logo_sem_fundo.png"),
            ),
            Text(
              "Coliseum Fit",
              style: AppTextStyles.logoFont,
            ),
            Text(
              "a academia dos deuses",
              style: AppTextStyles.logoSubtitleFont,
            ),
            //inputText("Senha", , password: true),
            Expanded(
              child: ListView.builder(itemBuilder:  (context, index) => planoItem(title: "Mensal", value: 59.90)
              ),
            ),
    
            Container(height: 70),
          ],
        ),
    );
  }

  planoItem({required String title, required double value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: RaisedButton(
        onPressed: () {},
        color: AppColors.backgroundButton,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 28),
          title: Text(
            title,
            style: AppTextStyles.titleHome,
          ),
          trailing: Text(
            "RS " + value.toString(),
            style: AppTextStyles.titleList,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(50), right: Radius.circular(50))),
      ),
    );
  }
}
