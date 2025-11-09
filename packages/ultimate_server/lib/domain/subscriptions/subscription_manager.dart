
import 'dart:async';

class SubscriptionManager {
  final Map<String, List<StreamSubscription<dynamic>>> _subscriptions = {};

  void add(String key, StreamSubscription<dynamic> subscription) {
    _subscriptions.putIfAbsent(key, () => []).add(subscription);
  }

  void clear(String key) {
    final subscriptions = _subscriptions[key] ?? [];
    for (final subscription in subscriptions) {
      subscription.cancel();
    }
    _subscriptions.remove(key);
  }
}