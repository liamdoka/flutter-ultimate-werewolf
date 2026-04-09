import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subscription_manager.g.dart';

@riverpod
SubscriptionManager subscriptionManager(Ref ref) => SubscriptionManager();

class SubscriptionManager {
  final Map<String, List<StreamSubscription<dynamic>>> _subscriptions = {};

  void add(String key, StreamSubscription<dynamic> subscription) {
    _subscriptions.putIfAbsent(key, () => []).add(subscription);
  }

  Future<void> clear(String key) async {
    final subscriptions = _subscriptions[key] ?? [];
    for (final subscription in subscriptions) {
      await subscription.cancel();
    }
    _subscriptions.remove(key);
  }
}
