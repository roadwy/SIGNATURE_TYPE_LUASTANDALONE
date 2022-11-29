-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1cc786c354e51 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:Win32/AVKRRM") then
  return mp.CLEAN
end
return mp.INFECTED

