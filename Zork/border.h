#ifndef Border_H
#define Border_H
#define XML_USE_STL
#include "xmlParser.h"
#include <string>
#include<vector>
#include "border.h"

using namespace std; 
class Border 
{ 
  public: 
  string direction;
  string name;
  string command;

  Border(XMLNode aNode);
      
  private:

}; 
#endif
