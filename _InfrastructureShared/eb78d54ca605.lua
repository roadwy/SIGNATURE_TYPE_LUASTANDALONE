-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/eb78d54ca605 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 4 and (pesecs[1]).SizeOfRawData > 1245184 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
return mp.CLEAN

