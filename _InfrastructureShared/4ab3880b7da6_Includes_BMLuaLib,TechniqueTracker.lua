local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil and L0_0 ~= "" and (string.find(L0_0, "/Applications/GlobalProtect.app/Contents/", 1, true) or string.find(L0_0, "/Library/Application Support/Microsoft/Defender", 1, true)) then
    return mp.CLEAN
  end
end
L0_0 = TrackPidAndTechniqueBM
L0_0("BM", "T1033", "Discovery_SystemUserDiscovery")
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
