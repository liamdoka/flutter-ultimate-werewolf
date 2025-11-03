import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ultimate_client/domain/client/client_provider.dart';

extension ClientWidgetRef on WidgetRef {
  Client get client => read(clientProvider.notifier);
}

extension ClientRef on Ref {
  Client get client => read(clientProvider.notifier);
}
