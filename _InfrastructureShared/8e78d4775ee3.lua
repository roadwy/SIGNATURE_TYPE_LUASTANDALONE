-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8e78d4775ee3 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("NID:Trickbot.PI!MSR") then
  return mp.INFECTED
end
return mp.CLEAN

