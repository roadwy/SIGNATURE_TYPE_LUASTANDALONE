if mp.get_mpattribute("HSTR:Win32/DelphiFile") and peattributes.isexe == true then
  return mp.INFECTED
end
return mp.CLEAN
