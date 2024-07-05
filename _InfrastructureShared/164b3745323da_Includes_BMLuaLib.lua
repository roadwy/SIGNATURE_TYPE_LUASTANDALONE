local L0_0
L0_0 = isTamperProtectionOn
L0_0 = L0_0()
if L0_0 then
  L0_0 = bm
  L0_0 = L0_0.get_process_relationships
  L0_0 = L0_0()
  if L0_0 then
    for _FORV_5_, _FORV_6_ in ipairs(L0_0) do
      if _FORV_6_.ppid then
        bm.add_related_process(_FORV_6_.ppid)
      end
    end
  end
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
