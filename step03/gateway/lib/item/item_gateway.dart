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

const List<String> item1 = const ["United States","United Kingdom","Japan"];
const List<String> item2 = const ["Italia","Nederland","Canada","United States","United Kingdom"];
const List<String> item3 = const ["Nederland","Canada","United States","Japan","Spain"];

int count = 0;