local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in ipairs(L1_1) do
  if _FORV_6_.reason == bm.RELATIONSHIP_INJECTION then
    bm.add_threat_process(_FORV_6_.ppid)
  end
end
AddResearchData("BM", true)
return mp.INFECTED
