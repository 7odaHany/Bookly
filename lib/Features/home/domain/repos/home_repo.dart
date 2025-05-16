import 'package:bookly/Features/home/domain/entities/home_entity.dart';

abstract class HomeRepo {
  Future<List<HomeEntity>> fetchFeaturedBooks();
  Future<List<HomeEntity>> fetchNewestBooks();

}