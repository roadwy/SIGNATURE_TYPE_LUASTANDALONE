if mp.getfilesize() > 339417 then
  return mp.CLEAN
end
if mp.get_mpattribute("MpAPILimitReached") then
  pe.set_peattribute("disable_apicall_limit", true)
end
pe.set_peattribute("deep_analysis", true)
pe.reemulate()
return mp.INFECTED
