if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 299008 and mp.getfilesize() < 327680 then
  return mp.INFECTED
end
return mp.CLEAN
