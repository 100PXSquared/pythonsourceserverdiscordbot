if SERVER then
	print("##########################")
	print("| HTTP Chat Relay Server |")
	print("##########################")

	util.AddNetworkString("DiscordRelay.NetworkMsg")
	util.AddNetworkString("DiscordRelay.DSay")
	DiscordRelay = {}

	include("params.lua")
	include("relay/relay.lua")
	AddCSLuaFile("relay/client.lua")
end

if CLIENT then
	print("############################")
	print("| HTTP Chat Relay Receiver |")
	print("############################")

	include("relay/client.lua")
end