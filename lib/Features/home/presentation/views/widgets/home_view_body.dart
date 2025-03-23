import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/cutsom_list_view.dart';
import 'package:bookly/core/Utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          SizedBox(height: 30),
          Text(
            'Best Sellers',
            style: Styles.tittleMedium ,
          ),
        ],
      ),
    );
  }
}
