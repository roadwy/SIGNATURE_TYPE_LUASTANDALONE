if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_security") and mp.getfilesize() > 98304 and mp.getfilesize() < 102400 then
  return mp.INFECTED
end
return mp.CLEAN
