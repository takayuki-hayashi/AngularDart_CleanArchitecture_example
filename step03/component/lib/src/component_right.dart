import 'package:angular/angular.dart';
import 'package:state/name/name.dart';

@Component(
  selector: 'component-right',
  templateUrl: 'component_right.html',
  styleUrls: const ['component_right.css'])
class ComponentRight {

  NameState name;
  ComponentRight(this.name);
}
