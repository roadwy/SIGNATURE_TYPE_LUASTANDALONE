if mp.get_mpattribute("LUA:FileSizeLE80000.A") and mp.get_mpattribute("Lua:FileSizeGEC350") and mp.get_mpattribute("BM_DropperObfuscatorUR") and mp.get_mpattribute("MpHasExpensiveLoop") and pehdr.TimeDateStamp ~= 0 and MpCommon.GetCurrentTimeT() > pehdr.TimeDateStamp and MpCommon.GetCurrentTimeT() - pehdr.TimeDateStamp <= 2592000 then
  return mp.INFECTED
end
return mp.CLEAN
