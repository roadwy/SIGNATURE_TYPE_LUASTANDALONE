if mp.get_mpattribute("pea_isdll") and mp.get_mpattribute("pea_hasexports") and mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 1986560 and mp.getfilesize() < 2015232 then
  return mp.INFECTED
end
return mp.CLEAN
