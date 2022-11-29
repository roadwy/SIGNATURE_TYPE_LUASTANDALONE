-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/354044bc3ad1 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("PUA:Block:Bayads")
if (mp.get_mpattribute)("//HSTR:Win32/Bayads!Exc") then
  return mp.CLEAN
end
return mp.INFECTED

