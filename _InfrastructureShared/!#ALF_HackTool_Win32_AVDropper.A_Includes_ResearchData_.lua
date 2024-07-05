local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
L1_1 = L1_1.CONTEXT_DATA_PROCESS_PPID
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "MpInternal_researchdata=cmd="
  L4_4 = L1_1
  L3_3 = L3_3 .. L4_4
  L2_2(L3_3)
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_PROCESSDEVICEPATH
L3_3 = L3_3(L4_4)
L4_4 = MpCommon
L4_4 = L4_4.PathToWin32Path
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if not L4_4 or not L2_2 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
if L4_4 == "" or L2_2 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L4_4
L6_6 = "\\"
L7_7 = L2_2
L5_5 = L5_5 .. L6_6 .. L7_7
L6_6 = sysio
L6_6 = L6_6.GetPEVersionInfo
L7_7 = L5_5
L6_6 = L6_6(L7_7)
if not L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = L6_6.OriginalFilename
if L7_7 then
  mp.set_mpattribute("MpInternal_researchdata=parentProcessOFN=" .. L7_7)
end
return mp.INFECTED
