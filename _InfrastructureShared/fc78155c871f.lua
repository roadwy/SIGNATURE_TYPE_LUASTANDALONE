-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/fc78155c871f 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections > 6 then
  return mp.SUSPICIOUS
end
return mp.CLEAN

