local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p1
  end
end
L1_1 = {
  "program files"
}
if contains(L0_0, L1_1) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1048", "Exfiltration_Archive")
return mp.INFECTED
