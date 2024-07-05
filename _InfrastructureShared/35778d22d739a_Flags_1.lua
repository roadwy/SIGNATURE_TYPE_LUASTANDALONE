if mp.HSTR_WEIGHT >= 10 then
  if not mp.IsTrustedFile(false) and not mp.IsKnownFriendlyFile(mp.getfilename(), true, true) then
    return mp.INFECTED
  end
else
  pe.set_peattribute("hstr_exhaustive", true)
  pe.set_peattribute("enable_vmm_grow", true)
  pe.set_peattribute("deep_analysis", true)
  pe.set_peattribute("disable_seh_limit", true)
  pe.set_peattribute("disable_apicall_limit", true)
  pe.reemulate()
end
return mp.CLEAN
