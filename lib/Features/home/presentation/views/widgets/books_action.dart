import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButtom(
              text: '19.99 €',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButtom(
              onPressed: () async {
                if (bookModel.volumeInfo.previewLink != null) {
                  Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  } else {
                    // Handle the case where the URL cannot be launched
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Could not launch preview link')),
                    );
                  }
                } else {
                  // Handle the case where previewLink is null
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: const Text('Preview link is not available')),
                  );
                }
              },
              fontSize: 16,
              text: 'Free Preview',
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
