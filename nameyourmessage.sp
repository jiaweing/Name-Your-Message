#include <sdktools>

public Plugin myinfo =
{
	name = "Name Your Message",
	author = "myst",
	description = "What you said shall be what you are called.",
	version = "1.0",
	url = "https://titan.tf"
}

public void OnPluginStart()
{
	RegConsoleCmd("say", Command_Say);
}

public Action Command_Say(int iClient, int iArgs)
{
	char sMessage[512];
	GetCmdArgString(sMessage, sizeof(sMessage));
	StripQuotes(sMessage);
	
	SetClientName(iClient, sMessage);
}