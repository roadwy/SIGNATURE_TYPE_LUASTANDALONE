if mp.get_mpattribute("MpAPILimitReached") then
  pe.set_peattribute("deep_analysis", true)
  pe.set_peattribute("disable_apicall_limit", true)
  pe.reemulate()
  return mp.INFECTED
end
return mp.CLEAN
