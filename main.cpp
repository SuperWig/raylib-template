#include "raylib.h"
#include "raymath.h" // test it can be found.

int main()
{
    InitWindow(680, 380, "Bob");
    while(!WindowShouldClose())
    {
        BeginDrawing();
        ClearBackground(BLACK);
        EndDrawing();
    }
}
