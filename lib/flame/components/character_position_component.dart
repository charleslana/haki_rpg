import 'package:flame/components.dart';
import 'package:haki_rpg/flame/battle_game.dart';
import 'package:haki_rpg/flame/components/character_component.dart';
import 'package:haki_rpg/flame/components/damage_component.dart';
import 'package:haki_rpg/flame/components/empty_hp_bar_component.dart';

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

  late EmptyHpBarComponent emptyHpBarComponent;
  late DamageComponent damageComponent;

  late Vector2 _starterPosition;

  @override
  Future<void> onLoad() async {
    debugMode = false;

    size = Vector2.all(gameRef.size.y * 20 / 100);

    priority = priorityCharacter;

    final initPosition = Vector2(
        gameRef.size.x * positionX / 100, gameRef.size.y * positionY / 100);

    position = initPosition;

    _starterPosition = initPosition;

    await add(character);

    emptyHpBarComponent = EmptyHpBarComponent(characterPositionSize: size);
    await add(emptyHpBarComponent);

    damageComponent = DamageComponent(characterPositionSize: size);
    await add(damageComponent);

    return super.onLoad();
  }

  void changePriority(int value) {
    priority = value;
  }

  Vector2 getStartingPosition() {
    return _starterPosition;
  }
}
