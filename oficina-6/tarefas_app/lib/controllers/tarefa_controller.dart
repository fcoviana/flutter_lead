import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

import '/models/tarefa.dart';

part 'tarefa_controller.g.dart';

class TarefaController = TarefaControllerBase with _$TarefaController;

abstract class TarefaControllerBase with Store {
  @observable
  var tarefa;

  @observable
  ObservableList<Tarefa> tarefas = ObservableList<Tarefa>();

  @action
  void create(String titulo, String descricao) {
    String uuid = Uuid().v4();

    tarefa = Tarefa(id: uuid, titulo: titulo, descricao: descricao);
    tarefas.add(tarefa);
  }

  @action
  void editar() {
    tarefas.removeWhere((element) => element.id == this.tarefa.id);
    tarefas.add(this.tarefa);
    this.tarefa = {};
  }

  @action
  void remove() {
    tarefas.removeWhere((element) => element.id == this.tarefa.id);
    this.tarefa = {};
  }
}
