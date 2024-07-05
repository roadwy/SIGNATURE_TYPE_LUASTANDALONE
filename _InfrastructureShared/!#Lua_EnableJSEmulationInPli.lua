if mp.get_mpattribute("MpInternal_IsPliScan") and mp.get_mpattribute("BM_TEXT_FILE") then
  mp.set_mpattribute("NScript:JSEnableEmulation")
end
return mp.CLEAN
