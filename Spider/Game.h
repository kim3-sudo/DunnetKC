#ifndef GAME_H
#define GAME_H

#include "Menu.h"

class Game {
public:
  Game();
  void play();
  void road();
  std::vector<Menu> parseXML(std::string file);
};

#endif
