import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '/resources/widgets/theme_toggle_widget.dart';
import '/bootstrap/extensions.dart';
import '/resources/widgets/logo_widget.dart';
import '/resources/widgets/safearea_widget.dart';
import '/app/controllers/home_controller.dart';

class HomePage extends NyStatefulWidget<HomeController> {
  static RouteView path = ("/home", (_) => HomePage());

  HomePage({super.key}) : super(child: () => _HomePageState());
}

class _HomePageState extends NyPage<HomePage> {
  @override
  get init => () async {};

  /// Define the Loading style for the page.
  /// Options: LoadingStyle.normal(), LoadingStyle.skeletonizer(), LoadingStyle.none()
  @override
  LoadingStyle get loadingStyle => LoadingStyle.normal();

  @override
  bool get stateManaged => false;

  @override
  void stateUpdated(data) async {
    super.stateUpdated(data);
    // setState(() {});
  }

  /// The [view] method displays your page.
  @override
  Widget view(BuildContext context) {
    return Scaffold(
      body: SafeAreaWidget(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(),
              Text(
                getEnv("APP_NAME"),
              ).displayMedium(color: context.color.content),
              Gap(20),
              ThemeToggle(),
            ],
          ),
        ),
      ),
    );
  }
}
