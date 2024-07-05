if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 204800 and mp.getfilesize() < 229376 then
  return mp.INFECTED
end
return mp.CLEAN
