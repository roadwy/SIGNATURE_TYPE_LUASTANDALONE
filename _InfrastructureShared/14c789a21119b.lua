if mp.get_mpattribute("pea_amd64_image") and mp.get_mpattribute("pea_isdll") and mp.get_mpattribute("pea_hasexports") and mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 380928 and mp.getfilesize() < 409600 then
  return mp.INFECTED
end
return mp.CLEAN
