if MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 1) then
  mp.set_mpattribute("Lua:BafsCode1")
end
if MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 3) then
  mp.set_mpattribute("Lua:BafsCode3")
end
return mp.CLEAN
