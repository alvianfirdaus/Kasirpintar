import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/presentation/detail_order/detail_order_screen.dart';
import 'package:dewakoding_kasir/app/presentation/input_order/input_order_screen.dart';
import 'package:dewakoding_kasir/app/presentation/order/order_notifier.dart';
import 'package:dewakoding_kasir/core/helper/date_time_helper.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/helper/number_helper.dart';
import 'package:dewakoding_kasir/core/provider/app_provider.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class OrderScreen extends AppWidget<OrderNotifier, void, void> {
  @override
  AppBar? appBarBuild(BuildContext context) {
    return AppBar(
      title: Text('Order'),
    );
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
        child: RefreshIndicator(
            onRefresh: () => notifier.init(),
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 5,
              ),
              itemCount: notifier.listOrder.length,
              itemBuilder: (context, index) {
                final item =
                    notifier.listOrder[notifier.listOrder.length - 1 - index];
                return _itemOrderLayout(context, item);
              },
            )));
  }

  @override
  Widget? floatingActionButtonBuild(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _onPressAddOrder(context),
      child: Icon(Icons.add),
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
                      format: 'dd MMM yyyy HH:mm'),
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
                  '${NumberHelper.formatIdr(item.totalPrice!)} (${item.items.length} item)',
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

  _onPressItemOrder(BuildContext context, OrderEntity item) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailOrderScreen(
            param1: item.id,
          ),
        ));
    notifier.init();
  }

  _onPressAddOrder(BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InputOrderScreen(),
        ));
    notifier.init();
  }
}
