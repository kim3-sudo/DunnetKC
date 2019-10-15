#ifndef MENU_HPP
#define MENU_HPP

#include <string>
#include <vector>

class Menu {
public:
  Menu(const std::string&, const std::string&,
      const std::vector<std::pair<std::string, std::string>>&
      = std::vector<std::pair<std::string, std::string>> {});
  const std::string& takeChoice() const;
  bool operator==(const std::string&) const;

private:
  std::string _name, _prompt;
  std::vector<std::pair<std::string, std::string>> _choices;
};

#endif