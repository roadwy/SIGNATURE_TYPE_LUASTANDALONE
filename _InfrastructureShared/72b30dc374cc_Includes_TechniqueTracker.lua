local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  if mp.bitand(_FORV_6_.reason_ex, bm.RELATIONSHIP_INJECTION) == bm.RELATIONSHIP_INJECTION then
    TrackPidAndTechniqueBM(_FORV_6_.ppid, "T1055.002", "processinjection_target_n")
    bm.request_SMS(_FORV_6_.ppid, "M")
    bm.add_action("SmsAsyncScanEvent", 1000)
  end
end
return mp.INFECTED
