-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_Trojan_Script_Scryper.A!dha 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:Scryper") >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

