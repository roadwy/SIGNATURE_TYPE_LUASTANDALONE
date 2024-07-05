if mp.get_mpattribute("pea_isdll") and peattributes.hasexports == true then
  return mp.INFECTED
end
return mp.CLEAN
