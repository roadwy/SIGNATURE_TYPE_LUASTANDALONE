if mp.HSTR_WEIGHT >= 3 then
  return mp.SUSPICIOUS
end
mp.set_mpattribute("do_deep_rescan")
return mp.CLEAN
