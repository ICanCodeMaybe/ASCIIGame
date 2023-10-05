
cd ascgine

gcc -c src/ascgine.cpp -o out/ascgine.o

ar rcs out/libascgine.a out/ascgine.o

cd ../

SOURCE="src/main.cpp"

gcc -std=c++17 -Wall -Wextra -Lascgine/out/. -lascgine -lstdc++ -I include/ -o out/ascii_game $SOURCE

