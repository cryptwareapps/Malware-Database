#include <Windows.h>
HDC hdc = GetDC(HWND_DESKTOP);
int icon_x = GetSystemMetrics(SM_CXICON);
int icon_y = GetSystemMetrics(SM_CYICON) ;
POINT cursor;

int main() {
	while(true){
        GetCursorPos(&cursor);
        DrawIcon(hdc, cursor.x - icon_x, cursor.y - icon_y, LoadIcon(NULL, IDI_ERROR));
	}
}
