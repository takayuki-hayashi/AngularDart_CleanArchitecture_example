import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:usecase/item/item_usecase.dart';

@Component(
  selector: 'component-search',
  templateUrl: 'component_search.html',
  styleUrls: const ['component_search.css'],
  directives: const [materialDirectives, CORE_DIRECTIVES, formDirectives]
)
class ComponentSearch {

  ItemUseCase userCase;

  ComponentSearch(this.userCase);

  void search() async {
    await userCase.addNewList();
  }
}
