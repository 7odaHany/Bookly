import 'package:bookly/Features/home/domain/entities/home_entity.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<HomeEntity>>> fetchFeaturedBooks();
  Future<Either<Failure,List<HomeEntity>>> fetchNewestBooks();

}