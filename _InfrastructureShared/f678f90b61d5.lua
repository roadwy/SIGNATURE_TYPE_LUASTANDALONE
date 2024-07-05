if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_boundimport") and mp.getfilesize() >= 1814528 and mp.getfilesize() < 1855488 then
  return mp.INFECTED
end
return mp.CLEAN
