import 'package:angular/angular.dart';
import 'package:step01/src/name.dart';

@Component(
  selector: 'component-right',
  templateUrl: 'component_right.html',
  styleUrls: const ['component_right.css'])
class ComponentRight {

  Name name;
  ComponentRight(this.name);
}
