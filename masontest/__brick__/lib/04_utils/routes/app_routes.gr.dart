// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:zale/01_model/customer/customer_model/customer_model.dart'
    as _i8;
import 'package:zale/01_model/order_model/order_model.dart' as _i9;
import 'package:zale/02_view/auth/login_page.dart' as _i4;
import 'package:zale/02_view/customer/customer_create_page.dart' as _i1;
import 'package:zale/02_view/customer/cutomer_page.dart' as _i2;
import 'package:zale/02_view/home_page.dart' as _i3;
import 'package:zale/02_view/sales/sales_detail_page.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    CustomerCreateRoute.name: (routeData) {
      final args = routeData.argsAs<CustomerCreateRouteArgs>(
          orElse: () => const CustomerCreateRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CustomerCreatePage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    CustomerRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CustomerPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    SalesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SalesDetailRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SalesDetailPage(
          key: args.key,
          orders: args.orders,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.CustomerCreatePage]
class CustomerCreateRoute extends _i6.PageRouteInfo<CustomerCreateRouteArgs> {
  CustomerCreateRoute({
    _i7.Key? key,
    _i8.CustomerModel? data,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          CustomerCreateRoute.name,
          args: CustomerCreateRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'CustomerCreateRoute';

  static const _i6.PageInfo<CustomerCreateRouteArgs> page =
      _i6.PageInfo<CustomerCreateRouteArgs>(name);
}

class CustomerCreateRouteArgs {
  const CustomerCreateRouteArgs({
    this.key,
    this.data,
  });

  final _i7.Key? key;

  final _i8.CustomerModel? data;

  @override
  String toString() {
    return 'CustomerCreateRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i2.CustomerPage]
class CustomerRoute extends _i6.PageRouteInfo<void> {
  const CustomerRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SalesDetailPage]
class SalesDetailRoute extends _i6.PageRouteInfo<SalesDetailRouteArgs> {
  SalesDetailRoute({
    _i7.Key? key,
    required _i9.SaleOrderModel orders,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SalesDetailRoute.name,
          args: SalesDetailRouteArgs(
            key: key,
            orders: orders,
          ),
          initialChildren: children,
        );

  static const String name = 'SalesDetailRoute';

  static const _i6.PageInfo<SalesDetailRouteArgs> page =
      _i6.PageInfo<SalesDetailRouteArgs>(name);
}

class SalesDetailRouteArgs {
  const SalesDetailRouteArgs({
    this.key,
    required this.orders,
  });

  final _i7.Key? key;

  final _i9.SaleOrderModel orders;

  @override
  String toString() {
    return 'SalesDetailRouteArgs{key: $key, orders: $orders}';
  }
}
