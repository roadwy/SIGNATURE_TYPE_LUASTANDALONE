local L0_0, L1_1, L2_2
L0_0 = 150000000
L1_1 = bm
L1_1 = L1_1.GetSignatureMatchDuration
L1_1 = L1_1()
if L0_0 < L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L2_2 = string.lower(this_sigattrlog[1].utf8p2)
end
if L2_2 ~= nil then
  if string.find(L2_2, "initramfs ", 1, true) or string.find(L2_2, "dracut", 1, true) or string.match(L2_2, "python%d python") or string.match(L2_2, "python%d%.[%d]+ python") then
    return mp.CLEAN
  end
  addRelatedProcess()
  reportRelatedBmHits()
  TrackPidAndTechniqueBM("BM", "T1036.003", "RenameBin_DefenseEvasion")
  return mp.INFECTED
end
return mp.CLEAN
