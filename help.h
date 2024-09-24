#include <iostream>

class Help {
public:
    void show() const {
        std::cout << "Uso del programa:" << std::endl;
        std::cout << "  -h        Muestra esta ayuda" << std::endl;
        std::cout << "  -v        Muestra la versión del programa" << std::endl;
        // Añadir más opciones aquí
    }
};

