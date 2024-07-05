local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
L1_1 = this_sigattrlog
L1_1 = L1_1[15]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = nil
  if this_sigattrlog[15].utf8p1 == nil then
    return mp.CLEAN
  end
  L1_1 = this_sigattrlog[15].utf8p1
  if L1_1 then
    if string.match(L1_1, "/%.[^/]+$") then
      TrackPidAndTechniqueBM("BM", "T1560.001", "Collection_ArchiveCollectedData_mt2023")
      reportRelatedBmHits()
      if L0_0 ~= nil and L0_0.ppid ~= nil then
        bm.trigger_sig("BmTraverseTreeBlock", "Detected", L0_0.ppid)
      end
      return mp.INFECTED
    else
      return mp.CLEAN
    end
  end
end
L1_1 = TrackPidAndTechniqueBM
L1_1("BM", "T1560.001", "Collection_ArchiveCollectedData_mt2023")
L1_1 = reportRelatedBmHits
L1_1()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = bm
    L1_1 = L1_1.trigger_sig
    L1_1("BmTraverseTreeBlock", "Detected", L0_0.ppid)
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
