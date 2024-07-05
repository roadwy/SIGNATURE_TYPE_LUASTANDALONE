local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  bm.trigger_sig("CmdTraverseTreeBlock", "Detected", _FORV_6_.ppid)
end
return mp.INFECTED
