if mp.get_mpattribute("pea_no_exports") and not mp.get_mpattribute("pea_no_tls") and mp.getfilesize() >= 106496 and mp.getfilesize() < 139264 then
  return mp.INFECTED
end
return mp.CLEAN
