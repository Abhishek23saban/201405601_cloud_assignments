#include<iostream>
#include<stdio.h>
using namespace std;
int main()
{
	freopen ("E:\\Cloud Computing\\Assignment 1\\32_bit_addition.asm","r",stdin);
	freopen ("E:\\Cloud Computing\\Assignment 1\\64_bit_addition.asm","w",stdout);
	string str;
	getline(cin,str);
	while(true)
	{
		if(str.find(".note.GNU-stack")!= std::string::npos)
			{	
			break;
			}
		if(str.find(" 8")!= std::string::npos)
			str.replace(str.find(" 8"),2,"16");
		if(str.find("-8")!= std::string::npos)
			str.replace(str.find("-8"),2,"16");
		if(str.find(" 5")!= std::string::npos)
			str.replace(str.find(" 5"),2," 6");
		if(str.find("subl")!= std::string::npos)
			str.replace(str.find("subl"),4,"subq");
		if(str.find("addl")!= std::string::npos)
			str.replace(str.find("addl"),4,"addq");
		if(str.find("pushl")!= std::string::npos)
			str.replace(str.find("pushl"),5,"pushq");
		if(str.find("movl")!= std::string::npos)
			str.replace(str.find("movl"),4,"movq");
		if(str.find("%e")!= std::string::npos)
			{
				str.replace(str.find("%e"),2,"%r");
				if(str.find("%e")!= std::string::npos)
				str.replace(str.find("%e"),2,"%r");
			}
		cout<<str<<"\n";
		getline(cin,str);	
	}
	
}
