if mp.get_mpattribute("LUA:FileSizeLE40000.A") and mp.get_mpattribute("Lua:FileSizeGEC350") and mp.get_mpattribute("BM_DropperObfuscatorUR") and mp.get_mpattribute("MpHasExpensiveLoop") and mp.get_mpattribute("PEPCODE:HasDigitalSignature") and mp.get_mpattribute("LUA:OverlaySize_0xd30_to_0xd40") and pehdr.TimeDateStamp ~= 0 and MpCommon.GetCurrentTimeT() > pehdr.TimeDateStamp and MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 2592000 then
  return mp.INFECTED
end
return mp.CLEAN
