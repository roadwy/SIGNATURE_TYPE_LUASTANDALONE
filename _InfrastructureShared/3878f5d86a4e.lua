-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3878f5d86a4e 

-- params : ...
-- function num : 0
if peattributes.isexe and (mp.get_mpattribute)("TEL:Trojan:Win32/Kovter_Config") then
  return mp.INFECTED
end
return mp.CLEAN

