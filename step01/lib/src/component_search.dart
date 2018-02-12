import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:step01/src/item.dart';

@Component(
  selector: 'component-search',
  templateUrl: 'component_search.html',
  styleUrls: const ['component_search.css'],
  directives: const [materialDirectives, CORE_DIRECTIVES, formDirectives]
)
class ComponentSearch implements OnInit {

  Items items;

  ItemUseCase userCase;

  ComponentSearch(this.userCase, this.items);

  @override
  void ngOnInit() {}

  void search() async {
    var newItems = await userCase.search();
    items.add(newItems);
  }
}
