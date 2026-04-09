# AGENTS.md

## Commands

- **Get dependencies**: `dart pub get` (from root or any package)
- **Run client**: `dart run ultimate_client:bin/ultimate_client.dart` or use Flutter `flutter run -d <device>`
- **Run server**: `dart run ultimate_server:bin/ultimate_server.dart`
- **Codegen**: `dart run build_runner build --delete-conflicting-outputs` (required after modifying models, providers, or routes)
- **Lint**: `dart analyze` or `flutter analyze`
- **Test**: `dart test` (root or per-package)

## Architecture

- **Monorepo**: Dart workspace with 3 packages in `packages/`:
  - `ultimate_client` - Flutter app (entrypoint: `lib/main.dart`)
  - `ultimate_server` - Shelf-based HTTP/WebSocket server (entrypoint: `lib/handlers.dart`)
  - `ultimate_shared` - Shared models and constants
- **State management**: Riverpod with code generation (`riverpod_annotation` + `riverpod_generator`)
- **Routing**: auto_route (code generated to `router.gr.dart`)
- **Models**: freezed + json_serializable for immutable models with JSON serialization

## Generated Files

- `*.g.dart` - riverpod providers, JSON serialization
- `*.freezed.dart` - freezed models
- `router.gr.dart` - auto_route generated routes

These are excluded from analysis. **Run codegen after modifying any models, providers, or routes.**

## Lint Rules

The project enforces strict lint rules (see `lints.yaml`). Key rules:
- `always_use_package_imports` - use `package:` imports, not relative
- `strict-casts`, `strict-inference`, `strict-raw-types` - strict typing
- Custom lints from `riverpod_lint` and `custom_lint` plugins

## Testing

- Tests live in `test/` directories within each package
- Example: `packages/ultimate_server/test/game_helpers/turn_order_test.dart`