import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:step01/src/component_center.dart';
import 'package:step01/src/component_left.dart';
import 'package:step01/src/component_list.dart';
import 'package:step01/src/component_right.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives,ComponentCenter, ComponentLeft, ComponentRight, ComponentList],
  providers: const [materialProviders],
)
class AppComponent {
}