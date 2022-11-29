-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19078350cb950 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT > 4 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT <= 4 then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  ;
  (pe.reemulate)()
end
return mp.LOWFI

