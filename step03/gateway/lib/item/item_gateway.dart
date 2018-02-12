import 'dart:async';

import 'package:angular/angular.dart';
import 'package:domain/item/item.dart';
import 'package:view_state/item/item.dart';
import 'package:port/item/item_port.dart';

@Injectable()
class ItemGateway extends ItemPort {

  ItemViewState itemViewState;

  ItemGateway(this.itemViewState);

  @override
  Items findCurrent() => itemViewState.items;

  @override
  Future<Items> nextList() async {
    var items = await item();
    return new Items(items.map((e) => new Item(e)).toList());
  }

  @override
  void store(Items items) {
    itemViewState.items = items;
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