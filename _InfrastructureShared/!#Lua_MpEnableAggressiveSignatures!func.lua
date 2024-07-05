if true == MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 2) then
  mp.set_mpattribute("Lua:MpEnableAggressiveSignatures")
end
return mp.CLEAN
