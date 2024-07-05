if mp.get_mpattribute("NID:Win32/Sednit") and peattributes.no_security == true and pehdr.NumberOfSections == 9 then
  return mp.INFECTED
end
return mp.CLEAN
