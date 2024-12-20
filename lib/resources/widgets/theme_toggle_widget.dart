import 'package:flutter/material.dart';
import 'package:nylo_framework/theme/helper/ny_theme.dart';
import 'package:nylo_framework/nylo_framework.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    bool isThemeDark = context.isThemeDark;
    return Column(
      children: [
        Switch(
            value: isThemeDark,
            onChanged: (_) {
              NyTheme.set(context,
                  id: getEnv(isThemeDark != true
                      ? 'DARK_THEME_ID'
                      : 'LIGHT_THEME_ID'));
            }),
        Text("${isThemeDark ? "Dark" : "Light"} Mode"),
      ],
    );
  }
}
