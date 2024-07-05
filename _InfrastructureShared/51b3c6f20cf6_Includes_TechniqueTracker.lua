local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L0_0 = L0_0(this_sigattrlog[1].utf8p2)
    if string.find(L0_0, "system32\\mmc.exe", 1, true) then
      return mp.CLEAN
    end
  end
end
L0_0 = TrackPidAndTechniqueBM
L0_0("BM", "T1548.002", "uac_bypass_src")
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
