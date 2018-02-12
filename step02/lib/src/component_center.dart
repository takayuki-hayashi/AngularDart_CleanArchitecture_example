import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:step01/src/name.dart';

@Component(
  selector: 'component-center',
  templateUrl: 'component_center.html',
  styleUrls: const ['component_center.css'],
  directives: const [materialDirectives,CORE_DIRECTIVES, formDirectives]
)
class ComponentCenter{

  String input;

  Name name;

  ComponentCenter(this.name);

  void onChange() => name.value = input;
}
