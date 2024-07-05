if mp.get_mpattribute("pea_ismsil") and mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_tls") and mp.get_mpattribute("pea_suspicious_section_name") and mp.getfilesize() >= 53248 and mp.getfilesize() < 55808 then
  return mp.INFECTED
end
return mp.CLEAN
