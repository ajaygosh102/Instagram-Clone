import 'package:instagram_clone/ui/theme/app_text_styles.dart';import 'package:instagram_clone/ui/theme/palette.dart';import 'package:instagram_clone/ui/views/home/home_view_model.dart';import 'package:flutter/material.dart';import 'package:stacked/stacked.dart';class HomeAppBar extends ViewModelWidget<HomeViewModel>    implements PreferredSizeWidget {  @override  Widget build(BuildContext context, HomeViewModel viewModel) {    return AppBar(      backgroundColor: Palette.backgroundColor,      elevation: 1,      title: Center(        child: Text(          viewModel.title,          style: AppTextStyles.headerTextStyle(),        ),      ),    );  }  @override  Size get preferredSize => const Size.fromHeight(60);}