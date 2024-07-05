local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L8_8 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L1_1(L2_2, L3_3))
if L1_1 == nil or L1_1 == "" or L0_0 == nil or L0_0 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L0_0
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 ~= 1 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 ~= 1 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L0_0
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if L2_2 ~= 1 then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L0_0
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
      if L2_2 ~= 1 then
        L2_2 = string
        L2_2 = L2_2.find
        L3_3 = L0_0
        L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
        if L2_2 ~= 1 then
          L2_2 = string
          L2_2 = L2_2.find
          L3_3 = L0_0
          L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
          if L2_2 == 1 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_3 = L0_0
            L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
            L2_2 = not L2_2
          elseif L2_2 ~= 1 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_3 = L0_0
            L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
          end
        end
      end
    end
  end
elseif L2_2 == 1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESS_PPID
L2_2 = L2_2(L3_3)
L3_3 = string
L3_3 = L3_3.find
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if not L3_3 then
  L3_3 = string
  L3_3 = L3_3.find
  L7_7 = true
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
elseif L3_3 then
  L3_3 = {
    L4_4,
    L5_5,
    L6_6,
    L7_7,
    L8_8,
    ".dmg",
    ".pkg"
  }
  L7_7 = ".pdf"
  L8_8 = "docx"
  for L7_7, L8_8 in L4_4(L5_5) do
    if L8_8 ~= nil and string.find(L1_1, L8_8, -4, true) then
      if L2_2 then
        TrackPidAndTechnique(L2_2, "T1036.008", "DefenseEvasion_Masquerading")
        MpCommon.BmTriggerSig(L2_2, "BM_SuspMacFileWithOtherExt", L0_0)
      end
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
