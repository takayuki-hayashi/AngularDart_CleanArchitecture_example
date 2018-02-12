import 'package:angular/angular.dart';
import 'package:step01/src/name.dart';

@Component(
  selector: 'component-left',
  templateUrl: 'component_left.html',
  styleUrls: const ['component_left.css'])
class ComponentLeft {

  Name name;
  ComponentLeft(this.name);
}
