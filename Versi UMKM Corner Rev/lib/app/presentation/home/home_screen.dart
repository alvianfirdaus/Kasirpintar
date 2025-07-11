import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/presentation/detail_order/detail_order_screen.dart';
import 'package:dewakoding_kasir/app/presentation/home/home_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/input_order/input_order_screen.dart';
import 'package:dewakoding_kasir/app/presentation/order/order_screen.dart';
import 'package:dewakoding_kasir/app/presentation/profil/profil_screen.dart';
import 'package:dewakoding_kasir/core/helper/date_time_helper.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/helper/number_helper.dart';
import 'package:dewakoding_kasir/core/provider/app_provider.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends AppWidget<HomeNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
        child: RefreshIndicator(
            onRefresh: () => notifier.init(),
            child: ListView(
              children: [_headerLayout(context), _orderTodayLayout(context)],
            )));
  }

  @override
  Widget? floatingActionButtonBuild(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _onPressAddOrder(context),
      child: Icon(Icons.add),
    );
  }

  _headerLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              InkWell(
                onTap: () => _onPressAvatar(context),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: GlobalHelper.getColorScheme(context).primary,
                  child: Text(
                    notifier.name.substring(0, 1),
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.HEADLINE_LARGE)
                        ?.copyWith(
                            fontWeight: FontWeight.bold,
                            color:
                                GlobalHelper.getColorScheme(context).onPrimary),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notifier.name,
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.TITLE_LARGE)
                          ?.copyWith(
                              color:
                                  GlobalHelper.getColorScheme(context).primary,
                              fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      notifier.email,
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.LABEL_LARGE)
                          ?.copyWith(
                              color: GlobalHelper.getColorScheme(context)
                                  .secondary),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _orderTodayLayout(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Order hari ini',
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.TITLE_LARGE)
                      ?.copyWith(
                          color: GlobalHelper.getColorScheme(context).primary,
                          fontWeight: FontWeight.bold),
                ),
              ),
              FilledButton(
                  onPressed: () => _onPressShowAllOrder(context),
                  child: Text('Lihat Semua'))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => SizedBox(
            height: 5,
          ),
          itemCount: notifier.listOrder.length,
          itemBuilder: (context, index) {
            final item = notifier.listOrder[index];
            return _itemOrderLayout(context, item);
          },
        )
      ],
    );
  }

  _itemOrderLayout(BuildContext context, OrderEntity item) {
    return InkWell(
      onTap: () => _onPressItemOrder(context, item),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.name,
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_LARGE)
                      ?.copyWith(
                          color: GlobalHelper.getColorScheme(context).primary,
                          fontWeight: FontWeight.bold),
                ),
                Text(
                  DateTimeHelper.formatDateTimeFromString(
                      dateTimeString: item.updatedAt!,
                      format: 'dd MMM yyyy HH:mm:ss'),
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_SMALL)
                      ?.copyWith(
                          color:
                              GlobalHelper.getColorScheme(context).secondary),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${NumberHelper.formatIdr(item.totalPrice!)}  ',
                  // '${NumberHelper.formatIdr(item.totalPrice!)} (${item.items.length} ',
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_LARGE)
                      ?.copyWith(
                          color: GlobalHelper.getColorScheme(context).primary,
                          fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color:
                              GlobalHelper.getColorScheme(context).secondary),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    item.paymentMethod!.name,
                    style: GlobalHelper.getTextTheme(context,
                            appTextStyle: AppTextStyle.BODY_SMALL)
                        ?.copyWith(
                            color:
                                GlobalHelper.getColorScheme(context).secondary),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _onPressAvatar(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilScreen(),
        ));
  }

  _onPressAddOrder(BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InputOrderScreen(),
        ));
    notifier.init();
  }

  _onPressShowAllOrder(BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OrderScreen(),
        ));
    notifier.init();
  }

  _onPressItemOrder(BuildContext context, OrderEntity item) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailOrderScreen(
            param1: item.id,
          ),
        ));
  }
}
