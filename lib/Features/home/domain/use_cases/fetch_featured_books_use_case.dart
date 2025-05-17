import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // check permissions
    return homeRepo.fetchFeaturedBooks();
  }
}