import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBarBookDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:  width*.17),
            child: const CustomBookItem(),
          ),
        ],
      ),
    );
  }
}


