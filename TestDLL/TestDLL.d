module TestDLL;

import core.sys.windows.windows;
import core.sys.windows.dll;
__gshared HINSTANCE g_hInst;

extern (Windows)
BOOL DllMain(HINSTANCE hInstance, ULONG ulReason, LPVOID pvReserved)
{
    switch (ulReason)
    {
		case DLL_PROCESS_ATTACH:
			//	g_hInst = hInstance;
			//MessageBox(NULL, "Hello World!", "Dll says:", MB_OK);
			//	dll_process_attach( hInstance, true );
			//	dll_process_detach( hInstance, true );
			//	break;

		case DLL_PROCESS_DETACH:
			//		dll_process_detach( hInstance, true );
			//	break;

		case DLL_THREAD_ATTACH:
			//dll_thread_attach( true, true );
			//	break;

		case DLL_THREAD_DETACH:
			//	dll_thread_detach( true, true );
			//	//	//	break;

        default:
    }
    return true;
}
extern(C)
{
	export int AddInteger(int a , int b)
	{
		return a + b ;
	}

}