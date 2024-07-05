local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L1_1 = "MpInternal_researchdata=newlyCreated="
  L2_2 = "true"
  L1_1 = L1_1 .. L2_2
  L0_0(L1_1)
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSDEVICEPATH
L1_1 = L1_1(L2_2)
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil or L0_0 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 == "" or L0_0 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2
L4_4 = "\\"
L5_5 = L0_0
L3_3 = L3_3 .. L4_4 .. L5_5
L4_4 = mp
L4_4 = L4_4.set_mpattribute
L5_5 = "MpInternal_researchdata=parentProcessPath="
L6_6 = L3_3
L5_5 = L5_5 .. L6_6
L4_4(L5_5)
L4_4 = sysio
L4_4 = L4_4.GetPEVersionInfo
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L4_4.OriginalFilename
L6_6 = L4_4.InternalName
if L5_5 then
  mp.set_mpattribute("MpInternal_researchdata=parentProcessOFN=" .. L5_5)
elseif L6_6 then
  mp.set_mpattribute("MpInternal_researchdata=parentProcessInternalName=" .. L6_6)
end
return mp.INFECTED
