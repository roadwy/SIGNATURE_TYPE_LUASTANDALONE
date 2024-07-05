if mp.HSTR_WEIGHT >= 5 then
  return mp.INFECTED
end
mp.set_mpattribute("do_deep_rescan")
return mp.SUSPICIOUS
