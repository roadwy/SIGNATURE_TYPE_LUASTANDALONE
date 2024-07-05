if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 225000 and mp.getfilesize() < 249576 then
  return mp.INFECTED
end
return mp.CLEAN
