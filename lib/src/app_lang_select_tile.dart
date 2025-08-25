import 'package:app_lang_selector/app_lang_selector.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppLangSelectTile extends ConsumerWidget {
  const AppLangSelectTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ = ref.watch(selectingLangProvider);

    () async {
      final json = await rootBundle.loadString('packages/app_lang_selector/assets/localizations/en.json');
      print('json:::');
      print(json);
    }();
    return EasyLocalization(
        supportedLocales: const [
          Locale('ja', 'JP'),
          Locale('en', 'US'),
          Locale('zh', 'CN'),
          Locale('tr', 'TR'),
          Locale('pt', 'PT'),
          Locale('es', 'ES'),
        ],
        path: 'packages/app_lang_selector/assets/localizations',
        fallbackLocale: const Locale('en', 'US'),
        child: ListTile(
      leading: const Icon(Icons.language),
      title: Text('select_lang'.tr()),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => const AppLangSelectPage(),
          ),
        );
      },
    ),);
  }
}
