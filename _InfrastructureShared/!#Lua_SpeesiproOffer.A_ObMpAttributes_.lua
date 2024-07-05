local L0_0
L0_0 = mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_FULL))
if L0_0 ~= nil and string.find(L0_0, "\\programdata\\.+\\offers\\.+%.exe", 1, false) then
  mp.set_mpattribute("Lua:SpeesiproOffer.A")
end
return mp.CLEAN
