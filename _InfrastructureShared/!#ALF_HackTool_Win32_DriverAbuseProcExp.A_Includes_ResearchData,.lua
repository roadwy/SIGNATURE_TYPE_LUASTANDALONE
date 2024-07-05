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
L4_4 = MpCommon
L4_4 = L4_4.GetOriginalFileName
L5_5 = L3_3
L4_4 = L4_4(L5_5)
L5_5 = ""
if L4_4 == nil or L4_4 == "" then
  L6_6 = sysio
  L6_6 = L6_6.GetPEVersionInfo
  L6_6 = L6_6(L3_3)
  if L6_6 == nil or next(L6_6) == nil then
    mp.set_mpattribute("MpInternal_researchdata=ERRORS=" .. "Failed to extract file verinfo")
    if MpCommon.StringRegExpSearch("(proc|handle|tcpview|winobj|logonsessions|tcpvcon|ir_lsess)", string.lower(L0_0)) == true then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
  L4_4 = L6_6.OriginalFilename
  L5_5 = L6_6.InternalName
end
if L4_4 ~= nil and L4_4 ~= "" then
  L6_6 = string
  L6_6 = L6_6.lower
  L6_6 = L6_6(L4_4)
  L4_4 = L6_6
  L6_6 = MpCommon
  L6_6 = L6_6.StringRegExpSearch
  L6_6 = L6_6("(procexp|handle|tcpview|winobj|logonsessions|tcpvcon)", L4_4)
  if L6_6 == true then
    return mp.CLEAN
  end
  mp.set_mpattribute("MpInternal_researchdata=parentProcessOFN=" .. L4_4)
elseif L5_5 ~= nil and L5_5 ~= "" then
  L6_6 = string
  L6_6 = L6_6.lower
  L6_6 = L6_6(L5_5)
  L5_5 = L6_6
  L6_6 = MpCommon
  L6_6 = L6_6.StringRegExpSearch
  L6_6 = L6_6("(process explorer|handle|tcpview|winobj|logonsessions|tcpvcon)", L5_5)
  if L6_6 == true then
    return mp.CLEAN
  end
  mp.set_mpattribute("MpInternal_researchdata=parentProcessInternalName=" .. L5_5)
end
L6_6 = mp
L6_6 = L6_6.INFECTED
return L6_6
