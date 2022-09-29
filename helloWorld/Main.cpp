#include <iostream>

void Log(const char* message)
{
  std::cout << message << std::endl;
}

int main(){
  Log("Oi mundo");
  return 0;
}