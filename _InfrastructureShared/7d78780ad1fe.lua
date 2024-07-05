if mp.get_mpattribute("SIGATTR:ASEP") and peattributes.reads_vdll_code then
  return mp.INFECTED
end
return mp.CLEAN
