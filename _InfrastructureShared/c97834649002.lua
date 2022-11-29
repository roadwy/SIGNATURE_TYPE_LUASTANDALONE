-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c97834649002 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 290000 then
  (pe.set_peattribute)("deep_analysis", true)
  ;
  (pe.reemulate)()
  return mp.INFECTED
end
return mp.CLEAN

