#include <iostream>
#include <cstdlib>
#include <fstream>
#include <cstring>
#include <string>

#include <sqlite3.h>
using namespace std;


int main() {

    sqlite3* db;
    char sql[50] = "";

    sqlite3_open("basededatos.db", &db);

    sqlite3_exec(db, sql, 0, 0, NULL);

    sqlite3_close(db);

    return 0;
}