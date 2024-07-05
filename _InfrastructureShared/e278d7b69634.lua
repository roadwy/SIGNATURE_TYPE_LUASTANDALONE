if mp.get_mpattribute("pea_no_exports") and mp.getfilesize() >= 909312 and mp.getfilesize() < 937984 then
  return mp.INFECTED
end
return mp.CLEAN
