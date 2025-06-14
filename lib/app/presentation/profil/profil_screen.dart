import 'package:dewakoding_kasir/app/presentation/login/login_screen.dart';
import 'package:dewakoding_kasir/app/presentation/print/print_screen.dart';
import 'package:dewakoding_kasir/app/presentation/product/product_screen.dart';
import 'package:dewakoding_kasir/app/presentation/profil/profil_notifier.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilScreen extends AppWidget<ProfilNotifier, void, void> {
  @override
  AppBar? appBarBuild(BuildContext context) {
    return AppBar();
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          _headerLayout(context),
          Container(
            width: double.maxFinite,
            child: FilledButton(
                onPressed: () => _onPressProduct(context),
                child: Text('Product')),
          ),
          Container(
            width: double.maxFinite,
            child: FilledButton(
                onPressed: () => _onPressSettingPrinter(context),
                child: Text('Setting Printer')),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              width: double.maxFinite,
              child: ElevatedButton(
                  onPressed: () => _onPressLogout(), child: Text('Logout')))
        ],
      ),
    ));
  }

  @override
  checkVariable(BuildContext context) {
    if (notifier.isLogout) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
        (route) => false,
      );
    }
  }

  _headerLayout(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          radius: 50,
          backgroundColor: GlobalHelper.getColorScheme(context).primary,
          child: Text(
            notifier.name.substring(0, 1),
            style: GlobalHelper.getTextTheme(context,
                    appTextStyle: AppTextStyle.DISPLAY_MEDIUM)
                ?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: GlobalHelper.getColorScheme(context).onPrimary),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          notifier.name,
          style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.TITLE_LARGE)
              ?.copyWith(
                  color: GlobalHelper.getColorScheme(context).primary,
                  fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          notifier.email,
          style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.BODY_SMALL)
              ?.copyWith(color: GlobalHelper.getColorScheme(context).secondary),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  _onPressProduct(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductScreen(),
        ));
  }

  _onPressSettingPrinter(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PrintScreen(),
        ));
  }

  _onPressLogout() {
    notifier.logout();
  }
}
