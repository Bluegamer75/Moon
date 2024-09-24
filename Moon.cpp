//Ejecucion de librerias

#include <iostream>
#include <string>

//Ejecucion de modulos creados por mi

#include "help.h" 
#include "man.h"
using namespace std;

int main(int argc, char* argv[]) {
    if (argc > 1) {
        string arg = argv[1];
        if (arg == "-h") {
            Help help;
            help.show();
            return 0;
        }
        if (arg == "-m") {
            Man man;
            man.show();
            return 0;
        }

        else if (arg == "-v") {
            cout << "Versión 1.0.0" << endl;
            return 0;
        }
        else {
            cerr << "Argumento desconocido:\n Te refieres a " << arg << endl;
            return 1;
        }
    }
    
    // Código principal del programa aquí
    cout << "Ejecutando el programa..." << endl;

    return 0;
}

