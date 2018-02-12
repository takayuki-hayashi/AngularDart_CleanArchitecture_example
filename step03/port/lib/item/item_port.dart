import 'dart:async';

import 'package:domain/item/item.dart';

abstract class ItemPort {

  Items findCurrent();

  Future<Items> nextList();

  void store(Items items);
}