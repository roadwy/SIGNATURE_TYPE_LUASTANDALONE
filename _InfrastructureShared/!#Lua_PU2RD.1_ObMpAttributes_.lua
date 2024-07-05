if mp.get_mpattribute("!#SLF:PDF/Spike.B!rfn") or mp.get_mpattribute("!#ALF:PDF/Spike.A!rfn") or mp.get_mpattribute("!#ALF:PDF/Spike.B!rfn") then
  mp.set_mpattribute("PDF:ScanAllUris")
end
return mp.CLEAN
