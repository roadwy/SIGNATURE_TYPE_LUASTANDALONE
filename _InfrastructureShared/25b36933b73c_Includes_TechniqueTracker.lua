local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  if mp.bitand(_FORV_6_.reason_ex, 1) == 1 then
    TrackPidAndTechniqueBM(_FORV_6_.ppid, "T1105", "CommandAndControl", 120)
  end
end
return mp.CLEAN
