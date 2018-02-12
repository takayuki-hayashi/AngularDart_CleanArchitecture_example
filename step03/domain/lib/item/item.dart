
class Item {
  final String value;
  Item(this.value);
}

class Items extends Iterable<Item> {
  List<Item> list;

  Items(this.list);

  @override
  Iterator<Item> get iterator => list.iterator;

  factory Items.empty() => new Items([]);
}