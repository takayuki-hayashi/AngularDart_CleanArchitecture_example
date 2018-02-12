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