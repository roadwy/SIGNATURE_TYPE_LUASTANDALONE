-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7d782f418987 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 and not (mp.get_mpattribute)("deep_analysis") then
  (pe.set_peattribute)("deep_analysis", true)
  ;
  (pe.reemulate)()
end
;
(mp.set_mpattribute)("PUA:Block:BrowseFox")
return mp.INFECTED

