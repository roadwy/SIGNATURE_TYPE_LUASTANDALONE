-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5878c2b10d1b 

-- params : ...
-- function num : 0
if peattributes.isdll == true and peattributes.hasexports == true and (mp.get_mpattribute)("NID:Win64/Bumblebee.PB!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

