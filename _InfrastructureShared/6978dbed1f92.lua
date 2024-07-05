if pehdr.TimeDateStamp < 1433874509 then
  mp.set_mpattribute("Lowfi:HSTR:BrowserModifier:Win32/AOLToolbarOld")
  return mp.CLEAN
end
return mp.INFECTED
