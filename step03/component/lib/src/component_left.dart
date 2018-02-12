import 'package:angular/angular.dart';
import 'package:state/name/name.dart';

@Component(
  selector: 'component-left',
  templateUrl: 'component_left.html',
  styleUrls: const ['component_left.css'])
class ComponentLeft {
  NameState name;
  ComponentLeft(this.name);
}
