if mp.HSTR_WEIGHT >= 14 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 4 and mp.get_mpattribute("SIGATTR:MadCodeHook") then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN
