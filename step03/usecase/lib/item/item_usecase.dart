import 'dart:async';

import 'package:port/item/item_port.dart';
import 'package:angular/angular.dart';


@Injectable()
class ItemUseCase {

  ItemPort port;

  ItemUseCase(this.port);

  Future<Null> addNewList() async {
    //var current = port.findCurrent();
    var list = await port.nextList();
    port.store(list);
  }
}