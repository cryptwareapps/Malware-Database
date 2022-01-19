#include <windows.h>

int main(void)
{
	HDC desk = GetDC(0);
	int x = GetSystemMetrics(0);
	int y = GetSystemMetrics(1);

	while(1)
	{
		desk = GetDC(0);
		PatBlt(desk, 0, 0, x, y, PATINVERT);
		Sleep(1000);
	}
}
