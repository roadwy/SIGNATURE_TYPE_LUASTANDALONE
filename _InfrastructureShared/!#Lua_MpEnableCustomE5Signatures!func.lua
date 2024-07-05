if true == MpCommon.NidSearch(mp.NID_ENABLE_EXTENDED_BAFS, 4) then
  mp.set_mpattribute("Lua:MpEnableCustomE5Signatures")
end
return mp.CLEAN
