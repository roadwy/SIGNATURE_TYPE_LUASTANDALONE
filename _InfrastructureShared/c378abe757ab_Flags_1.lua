if mp.HSTR_WEIGHT >= 8 then
  return mp.INFECTED
end
if not mp.get_mpattribute("pea_enable_vmm_grow") and not mp.get_mpattribute("pea_deep_analysis") then
  pe.set_peattribute("enable_vmm_grow", true)
  pe.set_peattribute("deep_analysis", true)
  pe.reemulate()
  return mp.CLEAN
end
return mp.SUSPICIOUS
