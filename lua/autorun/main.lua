local textcolor = Color(255, 185, 0)

local deathMessages = {
    ["npc_combine_s"] = {"死于联合军的暴政", "在联合军的火力下倒下", "被联合军瓦解了","死在了联合军的铁蹄之下", "成为联合军无情统治的牺牲品", "死于联合军的高压统治", "永别了，反抗者！" },
    ["npc_metropolice"] = {"被国民护卫队无情击毙","为人类解放事业而牺牲","被联合军的铁蹄碾碎" },
    ["npc_combinedropship"] = {"被联合军运输船击毙", "被运输船杀死，真是太逊了！", "被联合军空袭杀死"},
    ["npc_combinegunship"] = {"成为联合军先进生物科技的受害者", "被联合军炮舰扫荡", "在炮艇的枪林弹雨中倒下", "克莱纳！马格努森！我的火箭筒在哪里？"},
    ["npc_helicopter"] = {"被直升机击杀", "未能在直升机的扫射中存活", "在直升机的轮番攻击中死亡"},
    ["npc_crabsynth"] = {"被巨蟹杀死"},
    ["npc_ministrider"] = {"被迷你三角机甲杀死"},
    ["npc_hunter"] = {"被猎人的尖刺刺穿", "被捕食者追逐捕杀", "被高速飞行的钢矛击中"},
    ["npc_mortarsynth"] = {"被迫击炮的炮弹粉碎", "被迫击炮的精准炮弹摧毁"},
    ["npc_rollermine"] = {"被滚雷的电击瘫痪", "被滚雷电成了焦炭"},
    ["npc_sniper"] = {"被狙击手的瞄准击中要害", "被狙击手爆头了"},
    ["npc_stalker"] = {"被幽灵的致命激光杀死", "被激光切割致死", "被幽灵的高能射线终结了"},
    ["npc_strider"] = {"被三角机甲干翻了", "被三角机甲征服了", "被三角机甲火力碾压"},
    ["npc_turret_ceiling"] = {"被炮台的火力覆盖", "怎么天花板上也有炮台？", "被天花板炮台的火力扫荡终结了", "没有注意到天花板上的炮台"},
    ["npc_turret_floor"] = {"被步哨的子弹扫射", "被炮塔打成筛子", "被炮塔的无情火力终结了"},
    ["npc_turret_ground"] = {"被冒出来的炮塔杀死了", "被炮塔打成筛子", "被炮塔的无情火力终结了"},
    ["npc_manhack"] = {"—— 又一名飞锯的刀下亡魂！", "被飞锯切成了碎片", "被飞锯的利刃切割！"},

    ["npc_antlion"] = {"被蚁狮撕碎", "成为蚁狮的猎物", "被蚁狮的利爪终结了"},
    ["npc_antlion_worker"] = {"接受酸液洗礼", "成为蚁狮的猎物", "被工兵的酸液杀死了", "接触了致命的酸液"},
    ["npc_antlionguard"] = {"被蚁狮守卫所杀", "试图和守卫贴贴", "被蚁狮守卫的巨力终结了"},
    ["npc_antlionguardian"] = {"被蚁狮卫兵所杀", "试图和卫兵贴贴", "被蚁狮卫兵的巨力终结了"},
    ["npc_bullsquid"] = {"被牛乌贼的酸液腐蚀","试图和藤壶怪摔♂跤"},
    ["npc_barnacle"] = {"被藤壶怪一口吞食","被藤壶怪吃掉了","试图和藤壶怪摔♂跤"},
    ["npc_ichthyosaur"] = {"成为了鱼龙的美餐", "感谢你喂饱了鱼龙", "被鱼龙的巨口吞噬", "试图挑战鱼龙的深海霸权"},

    ["npc_headcrab"] = {"被头蟹的致命咬咬夺走生命", "成为头蟹的新宿主", "在头蟹的撕咬中失血过多"},
    ["npc_headcrab_black"] = {"中毒而死,悲悲~"},
    ["npc_headcrab_fast"] = {"被头蟹的致命咬咬夺走生命", "成为头蟹的新宿主", "在头蟹的撕咬中失血过多"},
    ["npc_zombie"] = {"被僵尸干翻了", "成为了僵尸的猎物", "被僵尸的致命咬咬终结了", "死于僵尸的致命挠挠"},
    ["npc_zombie_torso"] = {"被半截快速僵尸绊倒了","被僵尸干翻了", "成为了僵尸的猎物", "被僵尸的致命咬咬终结了", "死于僵尸的致命挠挠"},
    ["npc_poisonzombie"] = {"被剧毒猎头蟹僵尸杀死了，哭哭~", "被剧毒猎头蟹僵尸一巴掌拍倒了，哭哭~"},
    ["npc_fastzombie"] = {"被快速僵尸扑倒了", "成为了快速僵尸的猎物", "被快速僵尸的致命咬咬终结了", "死于快速僵尸的致命挠挠"},
    ["npc_fastzombie_torso"] = {"被半截快速僵尸绊倒了", "成为了快速僵尸的猎物", "死于快速僵尸的致命挠挠"},
    ["npc_zombine"] = {"被联合军僵尸杀死", "联合军僵尸替你收尸！", "死于僵尸的致命挠挠"},

    ["npc_citizen"] = {"被反叛者击杀", "被叛军杀死", "被市民们痛打而死", "在暴动中失去生命，安息吧~", "现在知道谁才是老大了吧"},
    ["npc_fisherman"] = {"你怎么会让一个打渔人杀了？"},
    ["npc_monk"] = {"被一个疯癫的光头僧侣打死"},
    ["npc_vortigaunt"] = {"被弗地冈人击杀", "死于弗地冈人的致命光束", "在暴动中失去生命，安息吧~", "现在知道谁才是老大了吧"},
    ["npc_alyx"] = {"被老婆杀了"},
    ["npc_barney"] = {"现在你不欠他啤酒了"},
    ["npc_dog"] = {"汪汪"},

    ["npc_grenade_frag"] = {"被炸死了", "被炸成了焦炭","在爆炸中四分五裂", "爆炸的冲击将其吞噬"},

    
    -- 添加更多敌人的消息，格式：["敌人类名"] = {"消息1", "消息2", ...}



    default = {"被杀死了", "命丧黄泉", "离开了这个残酷的世界"},

    customa1 = {"被", "在激战中被", "一不留神被"},
    customa2 = {"残忍地杀害了", "一击毙命", "无情地杀死了", "不废吹灰之力地杀死了"},
    customb1 = {"在", "不幸地在"},
    customb2 = {"的猛攻中丧生", "的报复中死亡"},
    customc1 = {"没能抵挡住", "没能撑过"},
    customc2 = {"的猛烈攻击", "的疯狂进攻"},

    fall = {"摔死了", "没站稳摔倒了", "失足从高处摔了下来", "愿天堂没有重力"},
    fire = {"被火焰吞噬", "在烈火中烧毁", "在熊熊烈火中化为灰烬"},
    explosion = {"被爆炸撕成碎片", "在爆炸中消失", "在一声巨响中化为虚无"},
    crash = {"在撞击中丧命", "被猛烈的撞击击垮", "因撞击丧生"},
    drown = {"被水淹死了", "被海浪冲走", "沉没于水底"},

    suicide = {"自杀了", "意外杀死了自己", "笨拙，痛苦地死去了", "再见，你已经不欠这个世界什么了"},
    -- 添加更多情况，格式类似
}
local ofnpcnames = {
    ["npc_alyx"] = {"爱莉克斯"},
    ["npc_barney"] = {"巴尼"},
    ["npc_breen"] = {"布林","布林博士"},
    ["npc_dog"] = {"阿狗"},
    ["npc_eli"] = {"伊莱"},
    ["npc_gman"] = {"G-Man"},
    ["npc_kleiner"] = {"克莱纳","克莱纳博士"},
    ["npc_mossman"] = {"莫斯曼","莫斯曼博士"},
    ["npc_vortigaunt"] = {"弗地冈","弗地冈人"},
    ["npc_citizen"] = {"市民","反叛者","叛军","反抗军"},
    ["npc_magnusson"] = {"马格努森","马格努森博士"},
    ["npc_fisherman"] = {"打渔人","渔民"},

    ["npc_zombie"] = {"僵尸","猎头蟹僵尸"},
    ["npc_zombie_torso"] = {"半截僵尸","猎头蟹僵尸躯干"},
    ["npc_poisonzombie"] = {"剧毒猎头蟹僵尸"},
    ["npc_barnacle"] = {"藤壶怪"},
    ["npc_fastzombie"] = {"快速猎头蟹僵尸","迅猛猎头蟹僵尸"},
    ["npc_headcrab"] = {"猎头蟹","头蟹"},
    ["npc_headcrab_black"] = {"剧毒猎头蟹"},
    ["npc_headcrab_fast"] = {"迅猛猎头蟹","快速猎头蟹","长足猎头蟹"},
    ["npc_fastzombie_torso"] = {"半截迅猛猎头蟹僵尸","快速猎头蟹僵尸躯干"},
    ["npc_zombine"] = {"联合军僵尸"},
    ["npc_antlion"] = {"蚁狮"},
    ["npc_antlionguard"] = {"蚁狮守卫"},
    ["npc_antlion_grub"] = {"蚁狮卫兵"},
    ["npc_antlion_worker"] = {"蚁狮工兵"},

    ["npc_monk"] = {"神父","格里高利神父"},
    ["npc_crow"] = {"乌鸦"},
    ["npc_pigeon"] = {"鸽子"},
    ["npc_seagull"] = {"海鸥"},

    ["npc_metropolice"] = {"国民护卫队"},
    ["npc_rollermine"] = {"滚雷","滚球地雷"},
    ["npc_turret_floor"] = {"炮塔","步哨"},
    ["npc_combine_s"] = {"联合军士兵","联合军"},
    ["npc_cscanner"] = {"联合军扫描仪","无人机","联合军无人机"},
    ["npc_clawscanner"] = {"联合军爪形扫描仪"},
    ["npc_combinegunship"] = {"联合军炮艇","炮艇"},
    ["npc_combinedropship"] = {"联合军运输船","运输船"},
    ["npc_helicopter"] = {"猎捕直升机","直升机"},
    ["npc_combine_camera"] = {"联合军摄像头","摄像头"},
    ["npc_turret_ceiling"] = {"天花板炮塔"},
    ["npc_strider"] = {"三角机甲"},
    ["npc_stalker"] = {"幽灵"},
    ["npc_manhack"] = {"飞锯","联合军飞锯"},
    ["npc_hunter"] = {"联合军猎人","猎人","狩猎者","捕食者"},
}



-- local SignedName = {}
-- function GetNPCName( ent )
--     if !SignedName[ ent:GetClass() ] then
--         local txt = ent:GetClass()
--         if ( ent:GetClass() == "npc_citizen" ) then
--             if ( ent:GetName() == "griggs" ) then return "格里格斯" end
--             if ( ent:GetName() == "sheckley" ) then return "肖克利" end
--             if ( ent:GetName() == "tobias" ) then return "拉兹罗" end
--             if ( ent:GetName() == "stanley" ) then return "珊迪" end
--             if ( ent:GetModel() == "models/odessa.mdl" ) then return "卡伯居上校" end
--         end
--         if ( ent:IsNPC() and ofnpcname[ ent:GetClass() ] ) then
--             txt = ofnpcname[ ent:GetClass() ]
--         elseif ( ent:IsNPC() and ent.NPCTable and ent.NPCTable.Name ) then
--             txt = ent.NPCTable.Name
--         elseif ( ent:IsVehicle() and ent.VehicleTable and ent.VehicleTable.Name ) then
--             txt = ent.VehicleTable.Name
--         else
--             txt = "#" .. ent:GetClass()
--         end
--         SignedName[ ent:GetClass() ] = txt
--     end
--     return SignedName[ ent:GetClass() ]
-- end

function GetNPCName( ent )
    if ( ent:GetClass() == "npc_citizen" ) then
        if ( ent:GetName() == "griggs" ) then return "格里格斯" end
        if ( ent:GetName() == "sheckley" ) then return "肖克利" end
        if ( ent:GetName() == "tobias" ) then return "拉兹罗" end
        if ( ent:GetName() == "stanley" ) then return "珊迪" end
        if ( ent:GetModel() == "models/odessa.mdl" ) then return "卡伯居上校" end
    end
    
    if ( ent:IsNPC() and ofnpcnames[ ent:GetClass() ] ) then
        local ofnpcname = ofnpcnames[ ent:GetClass() ]
        return ofnpcname[math.random(1, #ofnpcname)]
    elseif ( ent:IsNPC() and ent.NPCTable and ent.NPCTable.Name ) then
        return ent.NPCTable.Name
    elseif ( ent:IsVehicle() and ent.VehicleTable and ent.VehicleTable.Name ) then
        return ent.VehicleTable.Name
    else
        return "#" .. ent:GetClass()
    end
end

-- if ( ent:GetClass() == "npc_citizen" ) then
--     if ( ent:GetName() == "griggs" ) then return "格里格斯" end
--     if ( ent:GetName() == "sheckley" ) then return "肖克利" end
--     if ( ent:GetName() == "tobias" ) then return "拉兹罗" end
--     if ( ent:GetName() == "stanley" ) then return "珊迪" end
--     if ( ent:GetModel() == "models/odessa.mdl" ) then return "卡伯居上校" end
-- end
-- if ( ent:IsVehicle() and ent.VehicleTable and ent.VehicleTable.Name ) then
--     return ent.VehicleTable.Name
-- end

-- -- if ( ent:IsNPC() ) then
-- --     local npcnames = npcname[ent]
-- --     if not npcnames then
-- --         if  ( ent.NPCTable and ent.NPCTable.Name ) then
-- --             local npcnames = ent.NPCTable.Name
-- --     return npcnames
-- -- end

-- if ( ent:IsNPC() and ent.NPCTable and ent.NPCTable.Name ) then
--     return ent.NPCTable.Name
-- end
-- return "#" .. ent:GetClass()

if SERVER then
    util.AddNetworkString( "OFDeathMessage" )
else
    net.Receive( "OFDeathMessage", function()
        local tab = util.JSONToTable( net.ReadString() )
        local str = table.concat( tab, " " )
        chat.AddText( textcolor, unpack( tab ) )
    end )
end

hook.Add("PlayerDeath", "PlayerDeathMessage", function(victim, inflictor, attacker)
    local deathMessage = {}
    if IsValid(victim) and IsValid(attacker) and attacker:IsNPC() then
        local victimName = victim:Nick()
        local attackerName = attacker:GetClass()

        local messages = deathMessages[attackerName]
        if not messages then
            local messagescustoma1 = deathMessages.customa1
            local messagescustoma2 = deathMessages.customa2
            local messagescustomb1 = deathMessages.customb1
            local messagescustomb2 = deathMessages.customb2
            local messagescustomc1 = deathMessages.customc1
            local messagescustomc2 = deathMessages.customc2
            local randomIndex = math.random(3)
            if randomIndex == 1 then
                deathMessage = { victimName, " ", messagescustoma1[math.random(1, #messagescustoma1)], " ", attackerName, " ", messagescustoma2[math.random(1, #messagescustoma2)] }
            elseif randomIndex == 2 then
                deathMessage = { victimName, " ", messagescustomb1[math.random(1, #messagescustomb1)], " ", attackerName, " ", messagescustomb2[math.random(1, #messagescustomb2)] }
            else
                deathMessage = { victimName, " ", messagescustomc1[math.random(1, #messagescustomc1)], " ", attackerName, " ", messagescustomc2[math.random(1, #messagescustomc2)] }
            end
        else
            deathMessage = { victimName, " ", messages[math.random(1, #messages)] }
        end

        -- local deathMessage = victimName, randomMessage, attackerName



    elseif IsValid(victim) and IsValid(attacker) and attacker:IsPlayer() then
        if victim == attacker then
            local messages = deathMessages.suicide or deathMessages.default
            deathMessage = { victimName, " ", messages[math.random(1, #messages)] }
        else
            local victimName = victim:Nick()
            local attackerName = attacker:Nick()

            local messagescustoma1 = deathMessages.customa1
            local messagescustoma2 = deathMessages.customa2
            local messagescustomb1 = deathMessages.customb1
            local messagescustomb2 = deathMessages.customb2
            local messagescustomc1 = deathMessages.customc1
            local messagescustomc2 = deathMessages.customc2
            local randomIndex = math.random(3)
            if randomIndex == 1 then
                deathMessage = { victimName, " ", messagescustoma1[math.random(1, #messagescustoma1)], " ", attackerName, " ", messagescustoma2[math.random(1, #messagescustoma2)] }
            elseif randomIndex == 2 then
                deathMessage = { victimName, " ", messagescustomb1[math.random(1, #messagescustomb1)], " ", attackerName, " ", messagescustomb2[math.random(1, #messagescustomb2)] }
            else
                deathMessage = { victimName, " ", messagescustomc1[math.random(1, #messagescustomc1)], " ", attackerName, " ", messagescustomc2[math.random(1, #messagescustomc2)] }
            end
        end
    elseif IsValid(victim) and victim:IsPlayer() and not IsValid(attacker) then
        local dmgType = victim:LastHitGroup() -- 获取玩家最后受到的伤害类型
        local victimName = victim:Nick()
        print(dmgType)
        if dmgType == DMG_FALL then
            local messages = deathMessages.fall or deathMessages.default
            deathMessage = { victimName, " ", messages[math.random(1, #messages)] }
        elseif dmgType == DMG_BURN then
            local messages = deathMessages.fire or deathMessages.default
            deathMessage = { victimName, " ", messages[math.random(1, #messages)] }
        elseif dmgType == DMG_BLAST then
            local messages = deathMessages.explosion or deathMessages.default
            deathMessage = { victimName, " ", messages[math.random(1, #messages)] }
        elseif dmgType == DMG_CRUSH then
            local messages = deathMessages.crash or deathMessages.default
            deathMessage = { victimName, " ", messages[math.random(1, #messages)] }
        elseif dmgType == DMG_DROWN then
            local messages = deathMessages.drown or deathMessages.default
            deathMessage = { victimName, " ", messages[math.random(1, #messages)] }
        else
            local messages = deathMessages.default
            deathMessage = { victimName, " ", messages[math.random(1, #messages)] }
        end
    end
    -- 发送消息给所有玩家
    net.Start( "OFDeathMessage" )
    net.WriteString( util.TableToJSON( deathMessage ) )
    net.Broadcast()
end)

hook.Add("OnNPCKilled", "NPCDeathMessage", function(victim, attacker, inflictor)
    if IsValid(victim) and IsValid(attacker) then
        -- local cls = victim:GetClass()
        -- local victimName = list.Get("NPC")[ cls ] and list.Get("NPC")[ cls ].Name or cls

        -- if ( victim:IsNPC() and victim.NPCTable and victim.NPCTable.Name ) then
        --     victimName =  victim.NPCTable.Name
        -- else
        --     victimName = "#" .. victim:GetClass()
        -- end

        local deathMessage = {}
        local victimName = GetNPCName( victim )
        if attacker and attacker:IsPlayer() then
            local attackerName = attacker:Nick()
            local messagescustoma1 = deathMessages.customa1
            local messagescustoma2 = deathMessages.customa2
            local messagescustomb1 = deathMessages.customb1
            local messagescustomb2 = deathMessages.customb2
            local messagescustomc1 = deathMessages.customc1
            local messagescustomc2 = deathMessages.customc2
            local randomIndex = math.random(3)
                if randomIndex == 1 then
                    deathMessage = { victimName, " ", messagescustoma1[math.random(1, #messagescustoma1)], " ", attackerName, " ", messagescustoma2[math.random(1, #messagescustoma2)] }
                elseif randomIndex == 2 then
                    deathMessage = { victimName, " ", messagescustomb1[math.random(1, #messagescustomb1)], " ", attackerName, " ", messagescustomb2[math.random(1, #messagescustomb2)] }
                else
                    deathMessage = { victimName, " ", messagescustomc1[math.random(1, #messagescustomc1)], " ", attackerName, " ", messagescustomc2[math.random(1, #messagescustomc2)] }
                end

        elseif attacker and attacker:IsNPC() then
            -- local cls = attacker:GetClass()
            -- local attackerName = list.Get( "NPC" )[ cls ] and list.Get( "NPC" )[ cls ].Name or cls

            local attackerName = GetNPCName(attacker)

            local messages = deathMessages[attackerName]
            if not messages then
                local messagescustoma1 = deathMessages.customa1
                local messagescustoma2 = deathMessages.customa2
                local messagescustomb1 = deathMessages.customb1
                local messagescustomb2 = deathMessages.customb2
                local messagescustomc1 = deathMessages.customc1
                local messagescustomc2 = deathMessages.customc2
                local randomIndex = math.random(3)
                if randomIndex == 1 then
                    deathMessage = { victimName, " ", messagescustoma1[math.random(1, #messagescustoma1)], " ", attackerName, " ", messagescustoma2[math.random(1, #messagescustoma2)] }
                elseif randomIndex == 2 then
                    deathMessage = { victimName, " ", messagescustomb1[math.random(1, #messagescustomb1)], " ", attackerName, " ", messagescustomb2[math.random(1, #messagescustomb2)] }
                else
                    deathMessage = { victimName, " ", messagescustomc1[math.random(1, #messagescustomc1)], " ", attackerName, " ", messagescustomc2[math.random(1, #messagescustomc2)] }
                end
            else
                deathMessage = { victimName, " ", messages[math.random(1, #messages)] }
            end
        end
        net.Start( "OFDeathMessage" )
        net.WriteString( util.TableToJSON( deathMessage ) )
        net.Broadcast()
    end
end )