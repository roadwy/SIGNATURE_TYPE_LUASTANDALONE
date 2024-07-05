local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  if not IsTechniqueObservedForPid(_FORV_6_.ppid, "susp_spoolhack") then
    TrackPidAndTechniqueBM(_FORV_6_.ppid, "susp_spoolhack", "spool_childproc", 28800)
  end
end
return mp.INFECTED
