if mp.get_mpattribute("NID:BrowserModifier:Win32/Prifou.A2") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
