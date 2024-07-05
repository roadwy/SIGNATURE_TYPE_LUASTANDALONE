if mp.get_mpattribute("LUA:FileSizeLE80000.A") and mp.get_mpattribute("Lua:FileSizeGEC350") and mp.get_mpattribute("MpHasExpensiveLoop") and mp.get_mpattribute("PEPCODE:HasDigitalSignature") and mp.get_mpattribute("LUA:OverlaySize_0xd30_to_0xd40") then
  return mp.INFECTED
end
return mp.CLEAN
