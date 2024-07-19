/// use constant value to instantiate box for local storage
enum StorageBoxEnum {
  data("data");

  const StorageBoxEnum(this.name);
  final String name;
}

// use constant keys to get data from box
enum StorageDataKeyEnum {
  todoList("todo-list");

  const StorageDataKeyEnum(this.name);
  final String name;
}
