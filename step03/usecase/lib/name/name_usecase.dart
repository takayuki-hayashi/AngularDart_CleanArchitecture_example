import 'package:angular/angular.dart';
import 'package:port/name/name_port.dart';
import 'package:domain/name/name.dart';

@Injectable()
class NameUseCase {

  NamePort namePort;

  NameUseCase(this.namePort);

  void update(Name name) {
    namePort.store(name);
  }
}