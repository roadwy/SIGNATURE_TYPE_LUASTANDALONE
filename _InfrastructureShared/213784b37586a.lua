mp.set_mpattribute("HSTR:JSUtilsFramework")
if mp.HSTR_WEIGHT >= 7 then
  return mp.INFECTED
end
return mp.CLEAN
