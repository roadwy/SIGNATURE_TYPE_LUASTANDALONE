local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattributesubstring
L1_1 = "Backdoor:Win64/MeshAgent"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L1_1 = mp
  L1_1 = L1_1.bitor
  L2_2 = mp
  L2_2 = L2_2.FILEPATH_QUERY_FULL
  L3_3 = mp
  L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
  L3_3 = L1_1(L2_2, L3_3)
  L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
  if L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.INFECTED
    return L1_1
  end
  L1_1 = MpCommon
  L1_1 = L1_1.PathToWin32Path
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  if L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.INFECTED
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "->"
  L2_2 = L1_1(L2_2, L3_3)
  if L1_1 then
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L0_0, 1, L1_1 - 1)
    L0_0 = L3_3
  end
  L3_3 = "Backdoor:Win64/MeshAgent"
  MpCommon.SetOriginalFileName(L0_0, L3_3)
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
