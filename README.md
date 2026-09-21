# Flutter Pragmatic Architecture

A feature-first Flutter starter that keeps common application concerns in one
place without adding unnecessary layers. It uses Riverpod for persistent app
state, Dio for HTTP, Hive for encrypted local storage, and GoRouter for
navigation.

## What is included

- Feature folders for posts, authentication, and payments
- Typed API responses through `BaseResponse<T>`
- One `NetworkException` for API and connection errors
- `safeCall` for loading and status-specific error dialogs
- Dio authentication interceptor with token refresh and retry
- Encrypted Hive storage for authentication and app settings
- Keep-alive Riverpod state for authentication and settings

## Project structure

```text
lib/
├── core/
│   ├── extensions/     # BuildContext helpers, including safeCall
│   ├── global/         # Keep-alive Riverpod providers
│   ├── model/          # Shared Freezed/Hive models
│   ├── network/        # Dio clients, API envelope, exceptions, interceptors
│   ├── router/         # GoRouter configuration
│   ├── storage/        # Hive and secure-storage services
│   ├── theme/          # App theme and colors
│   └── ui/             # Shared dialogs and layout widgets
├── features/           # Feature UI and API clients
└── main.dart
```

## Getting started

```bash
flutter pub get
dart run build_runner build
flutter run
```

Run static analysis with:

```bash
flutter analyze
```

## Configuration

Set the API base URL and request timeouts in
[`lib/core/network/environment.dart`](lib/core/network/environment.dart).

## API response contract

All endpoints should return the same envelope. Feature clients unwrap it in
`ApiClient`, so UI code receives typed models rather than raw maps.

Successful response:

```json
{
  "data": {
    "username": "aungeinal@gmail.com",
    "nextStep": "OTP_GENERATED",
    "poolToken": null
  },
  "message": "Success",
  "status": 200,
  "success": true,
  "timestamp": 1789971695670
}
```

Error response:

```json
{
  "message": "Invalid username or OTP.",
  "status": 403,
  "success": false,
  "timestamp": 1789971702937,
  "traceId": "BAD_CREDENTIALS"
}
```

`ApiClient.requestData` returns the typed value inside `data`. When
`success` is `false`, it throws `NetworkException` with the backend message
and status code.

## Error handling

Use `safeCall` from a screen or widget:

```dart
final user = await context.safeCall(
  action: () => AuthClient.instance.login(
    email: email,
    password: password,
  ),
);
```

Default behavior:

| Status | UI behavior |
| --- | --- |
| 400, 403 | Shows the backend `message` |
| 406 | Shows “New device detected.” |
| 408 | Shows “Account is closed.” and a Logout button |
| 418 | Shows the session-timeout dialog and a Logout button |
| 500 | Shows a generic server-error message |

## Persistent Riverpod state

The root app eagerly loads both keep-alive providers after Hive initialization.

```dart
final authInfo = ref.watch(authInfoProvider);
final settings = ref.watch(appSettingProvider);
```

Save or update state through each notifier so it is persisted and reflected in
the UI:

```dart
await ref.read(authInfoProvider.notifier).save(authInfo);
await ref.read(appSettingProvider.notifier).setLocale('en');
```

## Architecture principle

This project is intentionally pragmatic: use a shared core for cross-cutting
concerns and keep feature-specific code in its feature folder. Add repository
or use-case layers only when a feature becomes complex enough to benefit from
them.
