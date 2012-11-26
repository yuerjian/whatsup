//============================================================================
// Name        : whatsup.cpp
// Author      : Mike Cammilleri
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

//#include <iostream>
//using namespace std;

//int main() {
//	cout << "!!!Hello World!!!" << endl; // prints !!!Hello World!!!
//	return 0;
//}


#include <sigar.h>

#include <iostream>

using namespace std;

//int cpuReal()
//{
//	int cpuReal;
//
//	mycpu.total
//
//	return cpuReal;
//
//}

int main()
{

	int status_cpu, status_mem, status_cpu_list, status_who;

	sigar_t *sigar;

	sigar_loadavg_t mycpu;
	sigar_cpu_list_t mycpulist;
	sigar_mem_t mymem;
	sigar_who_list_t mywho;

	sigar_open(&sigar);


	status_cpu = sigar_loadavg_get(sigar,&mycpu);
    status_mem = sigar_mem_get(sigar,&mymem);
    status_cpu_list = sigar_cpu_list_get(sigar,&mycpulist);
    status_who = sigar_who_list_get(sigar,&mywho);

  //Display status to screen

    cout << "CPU Number of Cores: " << mycpulist.number << endl;
	cout << "CPU Usage: " << mycpu.loadavg << endl;
	cout << "Memory Usage: " << mymem.used_percent << "%" << endl;
	cout << "Who's online: " << mywho.number << endl;



	sigar_close(sigar);



}
