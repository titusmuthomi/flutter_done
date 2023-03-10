class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'This App', isDone: true),
      ToDo(id: '02', todoText: 'Call Her ', isDone: true),
      ToDo(
        id: '03',
        todoText: 'Form Ya Chapo',
      ),
      ToDo(id: '04', todoText: 'Dinner with Doreen', isDone: true),
      ToDo(
        id: '05',
        todoText: 'Kevo - Lexus',
      ),
      ToDo(
        id: '06',
        todoText: 'Organise Harrys Wedding',
      ),
      ToDo(
        id: '07',
        todoText: 'Meet The Wesleys hehe',
      ),
    ];
  }
}
