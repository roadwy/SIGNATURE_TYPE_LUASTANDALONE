if mp.get_mpattribute("pea_no_security") and peattributes.isdll == true and peattributes.hasexports and peattributes.no_imports and mp.getfilesize() >= 80000 and mp.getfilesize() <= 250000 then
  return mp.INFECTED
end
return mp.CLEAN
