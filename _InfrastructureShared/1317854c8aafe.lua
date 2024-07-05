if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_relocs_stripped") and mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 65536 and mp.getfilesize() < 77824 then
  return mp.INFECTED
end
return mp.CLEAN
