if not mp.get_mpattribute("pea_enable_vmm_grow") or not mp.get_mpattribute("pea_deep_analysis") then
  pe.set_peattribute("enable_vmm_grow", true)
  pe.set_peattribute("deep_analysis", true)
  pe.reemulate()
else
  return mp.INFECTED
end
return mp.CLEAN
