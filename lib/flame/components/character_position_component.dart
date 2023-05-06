import 'package:flame/components.dart';
import 'package:haki_rpg/flame/battle_game.dart';
import 'package:haki_rpg/flame/components/character_component.dart';

class CharacterPositionComponent extends PositionComponent
    with HasGameRef<BattleGame> {
  final CharacterComponent character;
  final double pos;

  CharacterPositionComponent({
    required this.character,
    required this.pos,
  });

  @override
  Future<void> onLoad() async {
    debugMode = true;

    size = character.size;
    position = Vector2(gameRef.size.x * pos / 100, gameRef.size.y * pos / 100);

    await add(character);
    return super.onLoad();
  }
}
