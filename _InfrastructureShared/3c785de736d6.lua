if mp.get_mpattribute("MpAPILimitReached") then
  pe.set_peattribute("deep_analysis", true)
  pe.set_peattribute("disable_apicall_limit", true)
  pe.reemulate()
end
return mp.LOWFI
