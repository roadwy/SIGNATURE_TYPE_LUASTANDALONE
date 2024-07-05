pe.set_peattribute("hstr_exhaustive", true)
pe.reemulate()
mp.set_mpattribute("do_deep_rescan")
pe.set_peattribute("disable_apicall_limit", true)
if mp.HSTR_WEIGHT == 2 then
  return mp.INFECTED
end
return mp.LOWFI
