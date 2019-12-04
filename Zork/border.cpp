#include <iostream>
#include "border.h"

Border::Border(XMLNode aNode) {
  int i=0;
  XMLNode bNode=aNode.getChildNode(i++);
  do {
    string tag=bNode.getName();
    cout << "Border:" << tag << endl;
    if (tag == "name") {
      name=bNode.getText(0);
    } else if (tag == "direction") {
      direction=bNode.getText(0);
      command=direction[0];  
    }
    bNode=aNode.getChildNode(i++);
  } while (!bNode.isEmpty());
}

//here's another useless comment for the contributor guidelines.
