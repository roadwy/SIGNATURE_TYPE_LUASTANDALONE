local L0_0, L1_1
L0_0 = TrackPidAndTechniqueBM
L1_1 = "BM"
L0_0(L1_1, "T1102", "CommandAndControl_WebService")
L0_0 = TrackPidAndTechniqueBM
L1_1 = "BM"
L0_0(L1_1, "T1105", "CommandAndControl_IngressToolTransfer")
L0_0 = addRelatedProcess
L0_0()
L0_0 = reportRelatedBmHits
L0_0()
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  bm.trigger_sig("BmTraverseTreeBlock", "Detected", _FORV_6_.ppid)
end
return mp.INFECTED
