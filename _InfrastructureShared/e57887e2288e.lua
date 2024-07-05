if mp.HSTR_WEIGHT >= 6 then
  return mp.INFECTED
end
if mp.get_mpattribute("CallsRtlDecompressBuffer") and peattributes.pea_dt_error_not_enough_memory then
  pe.set_peattribute("enable_vmm_grow", true)
  pe.reemulate()
end
return mp.CLEAN
