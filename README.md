# app_lang_selector

[![GitHub](https://img.shields.io/github/license/normidar/app_lang_selector.svg)](https://github.com/normidar/app_lang_selector/blob/main/LICENSE)
[![pub package](https://img.shields.io/pub/v/app_lang_selector.svg)](https://pub.dartlang.org/packages/app_lang_selector)
[![GitHub Stars](https://img.shields.io/github/stars/normidar/app_lang_selector.svg)](https://github.com/normidar/app_lang_selector/stargazers)
[![Twitter](https://img.shields.io/twitter/url/https/twitter.com/normidar.svg?style=social&label=Follow%20%40normidar)](https://twitter.com/normidar)
[![Github-sponsors](https://img.shields.io/badge/sponsor-30363D?logo=GitHub-Sponsors&logoColor=#EA4AAA)](https://github.com/sponsors/normidar)

A Flutter package for easy language selection with beautiful UI and state management support. This package provides ready-to-use widgets for language selection with support for multiple languages and seamless integration with `easy_localization` and `riverpod`.

## Features

✨ **Easy Integration**: Drop-in widgets for language selection  
🌍 **Multi-language Support**: Supports 40+ languages with native names  
🎨 **Beautiful UI**: Material Design 3 compatible interface  
📱 **Responsive Design**: Works on all screen sizes  
🔄 **State Management**: Built-in Riverpod state management  
⚡ **Fast Performance**: Optimized for smooth user experience  
🎯 **Easy Localization**: Seamless integration with easy_localization package

## Supported Languages

The package includes native names for 40+ languages including:
- English, 日本語, 简体中文, 繁體中文, 한국어
- Español, Français, Deutsch, Italiano, Português
- Русский, العربية, Tiếng Việt, हिंदी, Polski
- And many more...

## Getting Started

### Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  app_lang_selector: ^0.0.1
  easy_localization: ^3.0.7
  flutter_riverpod: ^2.6.1
```

Then run:
```bash
flutter pub get
```

### Basic Setup

1. **Wrap your app with required providers:**

```dart
import 'package:app_lang_selector/app_lang_selector.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ja', 'JP'),
        Locale('zh', 'CN'),
        // Add your supported locales
      ],
      path: 'assets/localizations',
      fallbackLocale: Locale('en', 'US'),
      child: ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}
```

2. **Add language selection to your UI:**

```dart
// Simple tile for settings page
const AppLangSelectTile()

// Or use the full page directly
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => const AppLangSelectPage(),
  ),
);
```

## Example App

A complete example app is included in the `example/` directory. To run it:

```bash
cd example
flutter pub get
flutter run
```

The example demonstrates:
- Complete app setup with multiple languages
- Integration with easy_localization
- Language selection UI
- State persistence

## Advanced Usage

### Custom Language Names

You can customize the language display names by modifying the `langsNameMap` in your implementation:

```dart
final customLangsNameMap = {
  const LangCode(languageCode: 'en', countryCode: 'US'): 'English (US)',
  const LangCode(languageCode: 'ja', countryCode: 'JP'): '日本語',
  // Add your custom mappings
};
```

### State Management

The package uses Riverpod for state management. You can access the current language selection:

```dart
final selectedLang = ref.watch(selectingLangProvider);
```

## Requirements

- Flutter >=1.17.0
- Dart >=3.0.0
- easy_localization ^3.0.7
- flutter_riverpod ^2.6.1

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you find this package helpful, please consider giving it a ⭐ on [GitHub](https://github.com/normidar/app_lang_selector)!
