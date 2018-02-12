import 'dart:async';

import 'package:angular/angular.dart';


@Injectable()
class Items {
  List<String> list = [];

  void add(List<String> other) {
    list.addAll(other.where((e) => !list.contains(e)));
  }
}

@Injectable()
class ItemUseCase {

  ItemGateway gateway;
  ItemUseCase(this.gateway);

  Future<List<String>> search() async => await gateway.find();

}

@Injectable()
class ItemGateway {

  Future<List<String>> find() async {
    return item();
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
}

const List<String> item1 = const ["福岡","佐賀","熊本"];
const List<String> item2 = const ["福岡","佐賀","熊本","長崎","大分"];
const List<String> item3 = const ["福岡","佐賀","熊本","長崎","大分","宮崎","鹿児島"];

int count = 0;