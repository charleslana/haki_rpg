import 'package:flame/components.dart';
import 'package:haki_rpg/flame/battle_game.dart';
import 'package:haki_rpg/flame/components/character_component.dart';

class CharacterPositionComponent extends PositionComponent
    with HasGameRef<BattleGame> {
  final CharacterComponent character;
  final double positionX;
  final double positionY;
  final int priorityCharacter;

  CharacterPositionComponent({
    required this.character,
    required this.positionX,
    required this.positionY,
    required this.priorityCharacter,
  });

  late Vector2 _starterPosition;

  @override
  Future<void> onLoad() async {
    debugMode = true;

    size = Vector2.all(gameRef.size.y * 20 / 100);

    // scale = Vector2.all(gameRef.size.y * 0.25 / 100);

    priority = priorityCharacter;

    final initPosition = Vector2(
        gameRef.size.x * positionX / 100, gameRef.size.y * positionY / 100);

    position = initPosition;

    _starterPosition = initPosition;

    await add(character);
    return super.onLoad();
  }

  void changePriority(int value) {
    priority = value;
  }

  Vector2 getStartingPosition() {
    return _starterPosition;
  }
}
