#include <iostream>

#include "Menu.h"

Menu::Menu(const std::string &name, const std::string &prompt,
          const std::vector<std::pair<std::string, std::string> > &choices)
: _name(name)
  ,_prompt(prompt)
  , _choices(choices)
{
}

bool Menu::operator==(const std::string &name) const
{
  return name == _name;
}

const std::string& Menu::takeChoice() const
{
  if (_choices.size() == 0)
  {
    std::cout << _prompt;
    return "END";
  }
  unsigned int choice;
  int i;
  do
  {
    std::cout << _prompt;
    i = 1;
    for (auto ch : _choices)
    {
      std::cout << i++ << ": " << ch.first << "\n";
    }
    std::cin >> choice;
    choice--;
  }
  while(choice >= _choices.size());
  return _choices[choice].second;
}