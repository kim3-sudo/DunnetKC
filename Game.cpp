#include <iostream>
#include <string>
#include <algorithm>
#include <vector>
#include "pugixml.hpp"

#include "Game.h"
#include "Menu.h"

Game::Game()
{
}

void Game::play()
{
  road();
  std::cout << "...\n";
}

void Game::road()
{
  std::vector<Menu> game = parseXML("game.xml");

  auto menu = std::find(game.begin(), game.end(), "mainroad");
  while (menu != game.end())
  {
    menu = std::find(game.begin(), game.end(), menu->takeChoice());
  }
}

std::vector<Menu> Game::parseXML(std::string file)
{
    std::vector<Menu> game;

    pugi::xml_document doc;
    doc.load_file(file);

    pugi::xml_node menus = doc.child("menus");
    for (pugi::xml_node menu = menus.child("menu"); menu; menu = menu.next_sibling("menu"))
    {
      const pugi::char_t* name = menu.attribute("name").value();
      const pugi::char_t* prompt = menu.child_value("prompt");

      pugi::xml_node choices = menu.child("choices");
      std::vector<std::pair<std::string, std::string>> choices_vector;

      for(pugi::xml_node choice = choices.child("choice"); choice; choice = choice.next_sibling("choice"))
      {
        std::string choice_item = choice.first_child().value();
        std::string choice_link = choice.attribute("link").value();
        choices_vector.push_back({choice_item, choice_link});
      }
      game.push_back(Menu(name, prompt, choices_vector));
    }
    return game;
}