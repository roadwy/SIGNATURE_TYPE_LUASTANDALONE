if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_boundimport") and mp.getfilesize() >= 2404352 and mp.getfilesize() < 2428928 then
  return mp.INFECTED
end
return mp.CLEAN
