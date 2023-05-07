import 'package:flame/components.dart';

class CharacterModel {
  final String image;
  final double scale;
  final Vector2 size;
  final int amount;
  final double stepTime;
  final int? amountPerRow;

  const CharacterModel({
    required this.image,
    required this.scale,
    required this.size,
    required this.amount,
    required this.stepTime,
    this.amountPerRow,
  });
}
