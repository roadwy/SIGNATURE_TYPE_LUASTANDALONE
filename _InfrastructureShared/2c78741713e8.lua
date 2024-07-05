if mp.get_mpattribute("HSTR:Trojan:Win32/IsDelphi") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
