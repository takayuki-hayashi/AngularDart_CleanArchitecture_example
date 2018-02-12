import 'package:angular/angular.dart';
import 'package:domain/item/item.dart';
import 'package:state/item/item.dart';

@Injectable()
class ItemViewState extends ItemState {
  Items items = new Items.empty();
}