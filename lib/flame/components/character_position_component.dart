import 'package:flame/components.dart';
import 'package:haki_rpg/flame/battle_game.dart';
import 'package:haki_rpg/flame/components/character_component.dart';

class CharacterPositionComponent extends PositionComponent
    with HasGameRef<BattleGame> {
  final CharacterComponent character;
  final double positionX;
  final double positionY;

  CharacterPositionComponent({
    required this.character,
    required this.positionX,
    required this.positionY,
  });

  @override
  Future<void> onLoad() async {
    debugMode = false;

    size = character.size;
    position = Vector2(
        gameRef.size.x * positionX / 100, gameRef.size.y * positionY / 100);

    await add(character);
    return super.onLoad();
  }
}
