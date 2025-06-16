
abstract class MainFailure {
  const MainFailure();
}

class ClientFailure extends MainFailure {
  const ClientFailure();
}

class ServerFailure extends MainFailure {
  const ServerFailure();
}

class NetworkFailure extends MainFailure {
  const NetworkFailure();
}