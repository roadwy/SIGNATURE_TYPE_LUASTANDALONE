-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c378abe757ab_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 8 then
  return mp.INFECTED
end
if not (mp.get_mpattribute)("pea_enable_vmm_grow") and not (mp.get_mpattribute)("pea_deep_analysis") then
  (pe.set_peattribute)("enable_vmm_grow", true)
  ;
  (pe.set_peattribute)("deep_analysis", true)
  ;
  (pe.reemulate)()
  return mp.CLEAN
end
return mp.SUSPICIOUS

