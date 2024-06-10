import 'package:clean_notes/core/config/app.router.dart';
import 'package:clean_notes/core/theme/theme.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: MainApp()));

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ref.watch(themeProvider),
      routerConfig: appRouter,
    );
  }
}
