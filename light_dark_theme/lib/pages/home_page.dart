import 'package:flutter/material.dart';
import 'package:light_dark_theme/components/box.dart';
import 'package:light_dark_theme/components/button.dart';
import 'package:light_dark_theme/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
