import 'package:angular/angular.dart';
import 'package:domain/name/name.dart';
import 'package:view_state/name/name.dart';
import 'package:port/name/name_port.dart';

@Injectable()
class NameGateway extends NamePort {

  NameViewState nameViewState;

  NameGateway(this.nameViewState);

  @override
  void store(Name name) {
    nameViewState.name = name;
  }

}