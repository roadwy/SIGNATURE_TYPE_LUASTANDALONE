if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 532480 and mp.getfilesize() < 557056 then
  return mp.INFECTED
end
return mp.CLEAN
