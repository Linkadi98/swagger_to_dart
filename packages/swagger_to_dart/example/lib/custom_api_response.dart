import 'package:retrofit/call_adapter.dart';

class CustomApiResponseAdapter<T>
    extends CallAdapter<Future<T>, Future<Result<T>>> {
  @override
  Future<Result<T>> adapt(Future<T> Function() call) async {
    try {
      final response = await call();
      return Result<T>.ok(response);
    } catch (e) {
      return Result.err(e.toString());
    }
  }
}

class Result<T> {
  final T? data;
  final String? error;

  Result.ok(this.data) : error = null;
  Result.err(this.error) : data = null;

  bool get isSuccess => error == null;
  bool get isError => error != null;
}
