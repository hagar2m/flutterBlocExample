import 'package:breakingbad_app/presentation/screens/character_details.dart';
import 'package:flutter/material.dart';

import 'constants/routes_constants.dart';
import 'presentation/screens/characters_screen.dart';

class AppRouter {
  Route? genetareRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesConstants.charactersScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());
      case RoutesConstants.characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
