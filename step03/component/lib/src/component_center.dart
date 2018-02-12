import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:usecase/name/name_usecase.dart';
import 'package:domain/name/name.dart';

@Component(
  selector: 'component-center',
  templateUrl: 'component_center.html',
  styleUrls: const ['component_center.css'],
  directives: const [materialDirectives,CORE_DIRECTIVES, formDirectives]
)
class ComponentCenter{

  String input;

  NameUseCase nameUseCase;

  ComponentCenter(this.nameUseCase);

  void onChange() => nameUseCase.update(new Name(input));
}
