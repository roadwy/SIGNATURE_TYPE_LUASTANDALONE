if mp.getfilesize() < 410000 and pehdr.NumberOfSections == 3 and pevars.epsec == 1 then
  mp.set_mpattribute("attrmatch_rescan_psif")
end
return mp.CLEAN
