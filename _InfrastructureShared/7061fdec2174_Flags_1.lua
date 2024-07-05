if string.lower(string.sub(pe.get_versioninfo().ProductName, 1, 5)) == "award" and mp.HSTR_WEIGHT >= 14 then
  return mp.INFECTED
end
if mp.get_mpattribute("HSTR:PossibleKeylogger") and peattributes.hasexports then
  return mp.INFECTED
end
return mp.CLEAN
