import 'package:coliseum_fit/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../shared/themes/app_colors.dart';
import '../../shared/widgets/custom_widgets.dart';
import '../../shared/widgets/drawer.dart';

class HomePageFuncionarioADM extends StatefulWidget {
  const HomePageFuncionarioADM({Key? key}) : super(key: key);

  @override
  State<HomePageFuncionarioADM> createState() => _HomePageFuncionarioADM();
}

class _HomePageFuncionarioADM extends State<HomePageFuncionarioADM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      drawer: CustomDrawer(
        widgets: [
          drawerOption(title: "Visualizar funcionarios", icon: Icons.group),
          drawerOption(title: "Editar matrículas", icon: Icons.edit_calendar),
          Divider(),
          drawerOption(title: "Editar perfil", icon: Icons.edit),
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
                "Bom dia, ADM!",
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
                    "assets/images/logo.png",
                  )),
            ),
          ]),
      body: ListView.builder(itemBuilder: ((context, index) {
        return itemList();
      })),
    );
  }

Widget confirmDelete(){
   return AlertDialog(
      title: const Text('Confirmar exclusão'),
      content: SingleChildScrollView(
        child: ListBody(
          children:[
            Text("Você tem certeza que deseja exluir permanentemente o funcionário?"),
            Text("\n"),
            Text("Você deseja:"),
          ],
        ),
      ),
      actions: <Widget>[
         TextButton(
          child: const Text('Fechar', style: TextStyle(color: AppColors.seaGreen)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Sim, deletar funcionário', style: TextStyle(color: AppColors.warningRed)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }


Widget selectedItem() {
    return AlertDialog(
      title: const Text('Nome do Funcionario'),
      content: SingleChildScrollView(
        child: ListBody(
          children:[
            Text("Idade: "),
            Text("Desde: "),
            Text("\n\n"),
            Text("Você deseja:"),
          ],
        ),
      ),
      actions: <Widget>[
         TextButton(
          child: const Text('Fechar', style: TextStyle(color: AppColors.seaGreen)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Deletar funcionário', style: TextStyle(color: AppColors.warningRed)),
          onPressed: () {
            Navigator.pop(context);
            showDialog(context: context, builder: (ctx) => confirmDelete());
          },
        ),
      ],
    );
  }

  Widget itemList() {
    return ListTile(
      leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/usuario.png")),
      title: Text("Nome do Funcionario", style: AppTextStyles.titleList),
      subtitle: Text(
        "Desde: " +
            DateTime.now().day.toString() +
            "/" +
            DateTime.now().month.toString(),
        style: AppTextStyles.subtitleList,
      ),
      onTap: () {
        showDialog(context: context, builder: (ctx) => selectedItem());
      },
    );
  }
}
