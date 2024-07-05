if mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_relocs_stripped") and mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 393216 and mp.getfilesize() < 446464 then
  return mp.INFECTED
end
return mp.CLEAN
