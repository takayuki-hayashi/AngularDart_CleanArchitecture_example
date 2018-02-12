import 'package:angular/angular.dart';
import 'package:state/item/item.dart';

@Component(
  selector: 'component-list',
  templateUrl: 'component_list.html',
  styleUrls: const ['component_list.css'],
  directives: const [CORE_DIRECTIVES]
)
class ComponentList implements OnInit {

  ItemState items;

  ComponentList(this.items);

  @override
  void ngOnInit() {}

}
