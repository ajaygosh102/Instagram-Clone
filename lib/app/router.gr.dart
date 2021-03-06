// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/comments/comment_view.dart';
import '../ui/views/dash_board/dash_board_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/startup/start_up_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String dashBoard = '/dash-board';
  static const String homeView = '/home-view';
  static const String commentView = '/comment-view';
  static const all = <String>{
    startUpView,
    dashBoard,
    homeView,
    commentView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.dashBoard, page: DashBoard),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.commentView, page: CommentView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartUpView(),
        settings: data,
      );
    },
    DashBoard: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DashBoard(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    CommentView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CommentView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushStartUpView() => push<dynamic>(Routes.startUpView);

  Future<dynamic> pushDashBoard() => push<dynamic>(Routes.dashBoard);

  Future<dynamic> pushHomeView() => push<dynamic>(Routes.homeView);

  Future<dynamic> pushCommentView() => push<dynamic>(Routes.commentView);
}
