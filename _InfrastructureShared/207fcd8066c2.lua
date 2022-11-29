-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/207fcd8066c2 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 3 then
  return mp.LOWFI
end
if (pesecs[2]).Name ~= ".scot" then
  return mp.LOWFI
end
return mp.SUSPICIOUS

