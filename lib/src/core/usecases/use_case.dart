///Parent useCase class
abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}