if mp.HSTR_WEIGHT < 103 and peattributes.isexe and mp.get_mpattribute("reads_vdll_code") then
  return mp.INFECTED
end
return mp.CLEAN
