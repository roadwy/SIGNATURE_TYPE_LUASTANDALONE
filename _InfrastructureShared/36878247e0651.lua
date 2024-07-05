if mp.get_mpattribute("HSTR:Win32/DelphiFile") and peattributes.isexe == true and mp.getfilesize() < 2064000 then
  return mp.INFECTED
end
return mp.CLEAN
