if not mp.get_mpattribute("MpInternal_IsPliScan") then
  return mp.CLEAN
end
pe.set_peattribute("disable_dropper_rescan", true)
return mp.CLEAN
