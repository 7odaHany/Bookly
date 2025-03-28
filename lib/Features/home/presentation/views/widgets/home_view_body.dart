import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/cutsom_list_view.dart';
import 'package:bookly/core/Utils/assets.dart';
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
            style: Styles.tittleMedium,
          ),
          BestsellerListViewItem(),
        ],
      ),
    );
  }
}

class BestsellerListViewItem extends StatelessWidget {
  const BestsellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testImage),
                    ))),
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
