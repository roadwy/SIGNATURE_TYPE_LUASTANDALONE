if mp.get_mpattribute("pea_no_exports") and not mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 786432 and mp.getfilesize() < 819200 then
  return mp.INFECTED
end
return mp.CLEAN
