import 'package:async_redux/async_redux.dart';
import 'package:pokedex/state/app_state.dart';

///Use to know the loading state
abstract class LoadingAction extends ReduxAction<AppState> {
  LoadingAction({required this.actionKey});

  final String actionKey;

  @override
  void before() => dispatchAsync(WaitAction.add(actionKey));

  @override
  void after() => dispatchAsync(WaitAction.remove(actionKey));
}
