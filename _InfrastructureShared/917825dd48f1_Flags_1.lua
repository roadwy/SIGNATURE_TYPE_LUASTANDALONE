if mp.HSTR_WEIGHT >= 9 then
  return mp.INFECTED
end
if mp.get_mpattribute("SIGATTR:DelphiFile") then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN
