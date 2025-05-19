import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/functions/save_books.dart';
abstract class HomeRemoteDataSource {
  // the responsibility of this class is to fetch data from the remote server
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoind: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    List<BookEntity> books = getsBooksList(data);
    saveBooksData(books, kFeaturedBooks);
    return books;
  }



  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoind: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    List<BookEntity> books = getsBooksList(data);
    saveBooksData(books, kNewestBooks);
    return books;
  }



  List<BookEntity> getsBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var book in data['items']) {
      books.add(BookModel.fromJson(book));
    }
    return books;
  }
}
