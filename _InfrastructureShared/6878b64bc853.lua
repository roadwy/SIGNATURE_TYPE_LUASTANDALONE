-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6878b64bc853 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("LUA:FileSizeLE80000.A") and (mp.get_mpattribute)("Lua:FileSizeGEC350") and (mp.get_mpattribute)("MpHasExpensiveLoop") and (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") and (mp.get_mpattribute)("LUA:OverlaySize_0xd30_to_0xd40") then
  return mp.INFECTED
end
return mp.CLEAN

