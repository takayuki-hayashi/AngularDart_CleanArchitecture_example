import 'package:angular/angular.dart';
import 'package:step01/src/item.dart';

@Component(
  selector: 'component-list',
  templateUrl: 'component_list.html',
  styleUrls: const ['component_list.css'],
  directives: const [CORE_DIRECTIVES]
)
class ComponentList implements OnInit {

  ItemsState items;

  ComponentList(this.items);

  @override
  void ngOnInit() {}

}
