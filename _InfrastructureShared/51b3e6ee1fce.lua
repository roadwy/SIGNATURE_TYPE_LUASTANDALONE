if mp.get_sigattr_event_count(16384) > 50 then
  return mp.CLEAN
end
if string.lower(bm.get_imagepath()):find("\\netwrix auditor\\active directory auditing\\", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
