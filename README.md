# AngularDart + Clean Architecture + DDD + Unidirectional data flow



### modules

- web
  - entry-point and dependency-injection definition
- component
  - angular components
- state
  - interfaces of component state
- view_state
  - implementation of state
- port
  - interfaces of Repository(DDD)
- gateway
  - implementation of port(Repository)
- usecase
- domain
  - Domain Model


### layer(Clean Architecture)

- domain layer
  - domain
- Use Case layer
  - usecase, port
- Gateway, Presenters layer
  - gateway, component, state, view_state
- Web layer
  - web

### Unidirectional data flow

![Unidirectional data flow](https://github.com/takayuki-hayashi/AngularDart_CleanArchitecture_example/blob/master/udf.png "Unidirectional data flow")