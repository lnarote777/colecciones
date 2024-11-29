import 'dart:io';

void ejercicio2(){
  List<Tarea> tareas = [];
  List<Tarea> completas = [];
  List<Tarea> pendientes = [];
  bool salir = false;

  while (!salir) {
    print("\n****** TAREAS ******" +
        "\n\t1. Añadir tarea" +
        "\n\t2. Listar todas las tareas" +
        "\n\t3. Listar tareas completadas" +
        "\n\t4. Listar tareas pendientes" +
        "\n\t0. Salir");

    var opcion = stdin.readLineSync().toString();

    switch (opcion) {
      case "1":
        addTarea(tareas, completas, pendientes);

      case "2":
        listarTodo(tareas);

      case "3":
        listarCompletas(completas);

      case "4":
        listarPendientes(pendientes);

      case "0":
        salir = true;

      default: print("Opción inválida.");
    }
  }
}

class Tarea{
  String _nombre;
  String _descripcion;
  String _estado = "pendiente";

  Tarea(this._nombre, this._descripcion, this._estado);

  String mostrar() => "Nombre: $_nombre\n\t Descripción: $_descripcion\n\t Estado: $_estado";
}

void addTarea(List<Tarea> tareas, List<Tarea> completas, List<Tarea> pendientes){
  print("Nombre de la tarea -> ");
  var nombre = stdin.readLineSync().toString();

  print("Decripcion -> ");
  var desc = stdin.readLineSync().toString();

  print("Estado (p/c) -> ");
  var  status = stdin.readLineSync().toString().toLowerCase();
  String estado = "pendiente";

  Tarea tarea = new Tarea(nombre, desc, estado);

  if (status == "p") {
    tarea._estado = "pendiente";
    pendientes.add(tarea);
  } else if (status == "c") {
    tarea._estado = "completado";
    completas.add(tarea);
  }else{
    pendientes.add(tarea);
    print("No se reconoce el caracter como un caracter válido. - El estado de la tarea se establecerá como pendiente de forma predeterminada");
  }
  tareas.add(tarea);
}

void listarTodo(List<Tarea> tareas){
  if (tareas.isEmpty){
    print("No se encontró ninguna tarea.");
  }else {
    for (Tarea tarea in tareas) {
      print(tarea.mostrar());
    }
  }
}

void listarPendientes(List<Tarea> pendientes){
  if (pendientes.isEmpty){
    print("No se encontró ninguna tarea.");
  }else{
    for (Tarea tarea in pendientes){
      print(tarea.mostrar());
    }
  }
}

void listarCompletas(List<Tarea> completas){
  if (completas.isEmpty){
    print("No se encontró ninguna tarea.");
  }else{
    for (Tarea tarea in completas){
      print(tarea.mostrar());
    }
  }
}