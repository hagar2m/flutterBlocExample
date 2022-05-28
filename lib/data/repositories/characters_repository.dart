import 'package:breakingbad_app/data/models/characteer_model.dart';
import 'package:breakingbad_app/data/web_services/characters_api_services.dart';

class CharactersRepository {
  final CharacterApiServices characterApiServices;
  CharactersRepository(this.characterApiServices);

  Future<List<CharacterModel>> getAllCharacters() async {
    List<dynamic> characters = await characterApiServices.getAllCharacters();
    return characters
        .map((character) => CharacterModel.fromJson(character))
        .toList();
  }

  // Future<List<Quote>> getCharacterQuotes(String charName) async {
  //   final quotes = await charactersWebServices.getCharacterQuotes(charName);
  //   return quotes.map((charQuotes) => Quote.fromJson(charQuotes)).toList();
  // }
}
