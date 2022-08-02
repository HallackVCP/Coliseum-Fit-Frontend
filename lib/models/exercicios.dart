class Exercicio{
  int carga = 0;
  int repeticoes = 0;
  String nome = "";

  Exercicio({required this.nome, required this.carga, required this.repeticoes});
}

// EXERCICIOS PEITO
Exercicio sup_reto_barra = Exercicio(nome: "Supino reto com barra", carga: 10, repeticoes: 3);
Exercicio sup_reto_haltere = Exercicio(nome: "Supino reto com halteres", carga: 10, repeticoes: 3);
Exercicio crossover = Exercicio(nome: " Crossover com pega alta", carga: 30, repeticoes: 3);
Exercicio sup_declinado_haltere = Exercicio(nome: "Supino declinado com halteres", carga: 10, repeticoes: 3);

// EXERCICIOS COSTAS
Exercicio barra_fixa_aberta = Exercicio(nome: "Barra fixa com pegada aberta", carga: 0, repeticoes: 3);
Exercicio remada_curvada = Exercicio(nome: "Remada curvada com barra e pegada pronada", carga: 10, repeticoes: 3);
Exercicio remada_serrote = Exercicio(nome: "Remada serrote", carga: 30, repeticoes: 3);
Exercicio pull_over_barra = Exercicio(nome: "Pullover com barra", carga: 10, repeticoes: 3);
Exercicio remada_cavalinho = Exercicio(nome: "Remada cavalinho", carga: 0, repeticoes: 3);
Exercicio puxada_pulley = Exercicio(nome: "Puxada com barra no pulley", carga: 55, repeticoes: 3);
Exercicio remada_cabo = Exercicio(nome: "Remada na máquina de cabos", carga: 65, repeticoes: 3);

// PERNAS
Exercicio agachamento_barra = Exercicio(nome: "Agachamento com barra", carga: 40, repeticoes: 3);
Exercicio agachamento_frontal_barra = Exercicio(nome: "Agachamento frontal com barra", carga: 10, repeticoes: 3);
Exercicio agachamento_halteres = Exercicio(nome: "Agachamento afundo com halteres", carga: 30, repeticoes: 3);
Exercicio step_unilateral = Exercicio(nome: "Subida no step unilateral com halter", carga: 10, repeticoes: 3);
Exercicio rosca_perna = Exercicio(nome: "Rosca de perna na bola suíça", carga: 0, repeticoes: 3);
Exercicio elevacao_panturrilha_step = Exercicio(nome: "Elevação de panturrilha em pé no step", carga: 55, repeticoes: 3);
Exercicio avanco_invertido = Exercicio(nome: "Avanço invertido com halteres", carga: 65, repeticoes: 3);

// BICEPS  
Exercicio rosca_biceps = Exercicio(nome: "Rosca bíceps direta com barra", carga: 45, repeticoes: 3);
Exercicio biceps_halteres = Exercicio(nome: "Rosca bíceps direta com halteres", carga: 45, repeticoes: 3);
Exercicio biceps_ez = Exercicio(nome: "Bíceps em pé na barra EZ", carga: 45, repeticoes: 3);
Exercicio biceps_cabo = Exercicio(nome: "Bíceps no cabo e usando a corda", carga: 45, repeticoes: 3);
Exercicio rosca_concentrada = Exercicio(nome: "Rosca bíceps concentrada unilateral com halter", carga: 45, repeticoes: 3);

// TRICEPS 
Exercicio triceps_testa = Exercicio(nome: "Tríceps testa", carga: 15, repeticoes: 3);
Exercicio triceps_supino = Exercicio(nome: "Supino no banco reto com pegada fechada", carga: 45, repeticoes: 3);
Exercicio halteres_sob_cabeca = Exercicio(nome: "Extensão de halteres sob a cabeça", carga: 45, repeticoes: 3);
Exercicio triceps_maquina = Exercicio(nome: "Tríceps na máquina", carga: 45, repeticoes: 3);
Exercicio triceps_corda = Exercicio(nome: "Tríceps na polia alta com corda", carga: 45, repeticoes: 3);
