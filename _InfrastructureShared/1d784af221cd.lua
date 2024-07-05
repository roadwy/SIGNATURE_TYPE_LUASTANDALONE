if mp.get_mpattribute("MpHasExpensiveLoop") then
  if not mp.get_mpattribute("do_exhaustivehstr_rescan") then
    mp.set_mpattribute("do_exhaustivehstr_rescan")
  end
  return mp.INFECTED
end
return mp.CLEAN
