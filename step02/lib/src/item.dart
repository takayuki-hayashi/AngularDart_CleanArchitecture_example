import 'dart:async';

import 'package:angular/angular.dart';


@Injectable()
class ItemsState {
  List<String> items;
}


@Injectable()
class ItemUseCase {

  ItemGateway gateway;
  ItemUseCase(this.gateway);

  Future<Null> addNewList() async {
    var current = gateway.findCurrent();
    var newList = await gateway.nextList();
    current.addAll(newList.where((e) => !current.contains(e)));
    gateway.store(current);
  }
}

@Injectable()
class ItemGateway {

  ItemsState _items;

  ItemGateway(this._items);

  List<String> findCurrent() => _items.items;

  void store(List<String> items) => _items.items = items;

  Future<List<String>> nextList() async {
    return item();
  }
}






List<String> item() {
  count++;
  if(count == 1)
    return item1;
  else if(count == 2)
    return item2;
  else
    return item3;
}

const List<String> item1 = const ["福岡","佐賀","熊本"];
const List<String> item2 = const ["福岡","佐賀","熊本","長崎","大分"];
const List<String> item3 = const ["福岡","佐賀","熊本","長崎","大分","宮崎","鹿児島"];

int count = 0;