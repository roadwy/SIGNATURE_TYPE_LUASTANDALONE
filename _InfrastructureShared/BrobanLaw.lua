local L0_0, L1_1, L2_2
L0_0 = false
for _FORV_4_, _FORV_5_ in L1_1(L2_2) do
  if _FORV_5_.Schema == "file" and string.match(Remediation.Threat.Name, "BrobanLaw") then
    L0_0 = true
    break
  end
end
if L0_0 then
  if L1_1 then
    L2_2(L1_1, nil)
  end
  if L2_2 then
    sysio.DeleteRegKey(L2_2, nil)
  end
end
