-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2f878719c5e1a 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 9 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan_onescan")
return mp.CLEAN

