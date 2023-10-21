AddCSLuaFile( )

local function of_deathmessage( pnl )

	pnl:ControlHelp( "死亡信息设置" )

	local Default = {

		["of_deathmessage_player"] = 1,
        ["of_deathmessage_npc"] = 1,
        ["of_deathmessage_realname"] = 0,
        ["of_deathmessage_detail"] = 0
	}

	pnl:AddControl( "ComboBox" , { ["MenuButton"] = 1 , ["Folder"] = "of_deathmessage" , ["Options"] = { [ "#preset.default" ] = Default } , ["CVars"] = table.GetKeys( Default ) } )
	
	pnl:CheckBox( "开启玩家死亡信息" , "of_deathmessage_player" )
    pnl:CheckBox( "开启NPC死亡信息" , "of_deathmessage_npc" )
    pnl:CheckBox( "显示更详细的NPC名称" , "of_deathmessage_realname" )
    pnl:Help("开启时NPC的名称会显示得更准确，比如说套用npc_citizen的模组NPC会显示他们的真实名称，而不会直接显示为市民。")
    pnl:CheckBox( "显示更生动的NPC死亡信息" , "of_deathmessage_detail" )
	pnl:Help("当NPC被杀死时会根据袭击者显示更生动的信息，但由于这些信息套用了玩家遇袭的语句，部分表述可能不合逻辑。")

	

end

hook.Add( "PopulateToolMenu", "DeathmessageMenus", function( )
	spawnmenu.AddToolMenuOption( "Options" , "Obscurefreeman's mod" , "of_deathmessage" , " Death Message" , "" , "" , of_deathmessage )

end )