if mp.get_mpattribute("pea_ismsil") and mp.get_mpattribute("pea_no_exports") and mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 77824 and mp.getfilesize() < 102400 then
  return mp.INFECTED
end
return mp.CLEAN
