if mp.HSTR_WEIGHT >= 8 then
  return mp.INFECTED
end
if not mp.get_mpattribute("pea_enable_vmm_grow") and not mp.get_mpattribute("pea_deep_analysis") and not mp.get_mpattribute("do_exhaustivehstr_rescan") then
  pe.set_peattribute("enable_vmm_grow", true)
  pe.set_peattribute("deep_analysis", true)
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
  return mp.CLEAN
end
mp.set_mpattribute("HSTR:Ransom:Win32/Loktrom.B")
return mp.SUSPICIOUS
