local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = MpCommon
L0_0 = L0_0.GetPersistContextNoPath
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  for L4_4, L5_5 in L1_1(L2_2) do
    if sysio.IsFileExists(L5_5) then
      bm.add_threat_file(L5_5)
    end
  end
  return L1_1
end
return L1_1
