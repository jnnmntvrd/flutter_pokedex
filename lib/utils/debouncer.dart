import 'dart:async';

class Debouncer {
  Debouncer({required this.seconds});

  final int seconds;
  Timer? _timer;

  void run(Function() action) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(seconds: seconds), action);
  }
}
