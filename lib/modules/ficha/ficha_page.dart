import 'package:coliseum_fit_aluno/models/exercicios.dart';
import 'package:coliseum_fit_aluno/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_picker/horizontal_picker.dart';
import '../../shared/themes/app_text_styles.dart';
import '../../models/IFicha.dart';

class FichaPage extends StatefulWidget {
  const FichaPage({Key? key}) : super(key: key);

  @override
  State<FichaPage> createState() => _FichaPageState();
}

class _FichaPageState extends State<FichaPage>
    with SingleTickerProviderStateMixin {
  int _currentIntValue = 10;
  int _currentIntPeso = 10;

  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: getNumeroTreinos(),
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Tab> _tabs = getFicha()
        .listaTreinos
        .map((e) => Tab(
              text: e.nome,
            ))
        .toList();

    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          toolbarHeight: 20,
          backgroundColor: AppColors.background,
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: AppColors.primary,
              controller: _tabController,
              tabs: _tabs),
        ),
        body: Container(
            color: AppColors.background,
            child: TabBarView(
                controller: _tabController,
                children: getFicha()
                    .listaTreinos
                    .map((e) => ListView.builder(
                          itemCount: e.listaExercicios.length,
                          itemBuilder: (context, index) => (Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: ListTile(
                              onTap: () {},
                              onLongPress: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => alteraValor(exercicio: e.listaExercicios[index]));
                              },
                              title: Text(
                                e.listaExercicios[index].nome,
                                style: AppTextStyles.titleListTileFicha,
                              ),
                              trailing: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: e.listaExercicios[index].carga
                                              .toString() +
                                          " kg",
                                      style: AppTextStyles.titleHome),
                                  TextSpan(
                                      text: "   x " +
                                          e.listaExercicios[index].repeticoes
                                              .toString(),
                                      style: AppTextStyles.loginSimple),
                                ]),
                              ),
                            ),
                          )),
                        ))
                    .toList())));
  }

  AlertDialog alteraValor({
    required Exercicio exercicio
  }) {
    return AlertDialog(
      title: Text(
        "Alterar peso do exercício",
        style: AppTextStyles.titleHome,
      ),
      backgroundColor: AppColors.background,
      content: HorizontalPicker(
        initialPosition: InitialPosition.center,
        minValue: 0,
        maxValue: 150,
        divisions: 150,
        height: 220,
        suffix: "kg",
        showCursor: false,
        backgroundColor: AppColors.background,
        activeItemTextColor: AppColors.primary,
        passiveItemsTextColor: AppColors.border.withOpacity(0.5),
        onChanged: (value) {
          exercicio.carga = value.toInt();
        },
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Cancelar",
              style: AppTextStyles.cancelAlert,
            )),
        TextButton(
            onPressed: () {
              setState(() {
                _currentIntPeso = _currentIntValue;
              });
              Navigator.pop(context);
            },
            child: Text(
              "Salvar",
              style: AppTextStyles.confirmAlert,
            )),
      ],
    );
  }

  Widget exerciseItemList(
      {required String nomeExercicio,
      required int peso,
      required int numeroRepeticoes,
      String unidadeMedida = "kg",
      required int index}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: ListTile(
        onTap: () {},
        onLongPress: () {
          // showDialog(context: context, builder: (context) => alteraValor(exercicio: ));
        },
        title: Text(
          nomeExercicio,
          style: AppTextStyles.titleListTileFicha,
        ),
        trailing: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: peso.toString() + " " + unidadeMedida,
                style: AppTextStyles.titleHome),
            TextSpan(
                text: "   x " + numeroRepeticoes.toString(),
                style: AppTextStyles.loginSimple),
          ]),
        ),
      ),
    );
  }
}
