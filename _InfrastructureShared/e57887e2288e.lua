-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e57887e2288e 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 6 then
  return mp.INFECTED
end
if (mp.get_mpattribute)("CallsRtlDecompressBuffer") and peattributes.pea_dt_error_not_enough_memory then
  (pe.set_peattribute)("enable_vmm_grow", true)
  ;
  (pe.reemulate)()
end
return mp.CLEAN

