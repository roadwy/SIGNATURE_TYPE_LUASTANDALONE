local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetCertificateInfo
L1_1 = L1_1()
L2_2 = #L1_1
if L2_2 > 0 and L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_FULL
L4_4 = L3_3(L4_4, mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L2_2(L3_3, L4_4, L3_3(L4_4, mp.FILEPATH_QUERY_LOWERCASE))
if L2_2 ~= nil then
  L3_3 = #L2_2
elseif L3_3 < 5 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_PROCESS_PPID
L3_3 = L3_3(L4_4)
L4_4 = string
L4_4 = L4_4.find
L4_4 = L4_4(L2_2, "/contents/macos/", 1, true)
if L4_4 then
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L2_2, "(.-)/contents")
  if string.find(L4_4, ".app", -4, true) then
    mp.set_mpattribute("BM_MachoPartOfApp")
    if L3_3 then
      MpCommon.BmTriggerSig(L3_3, "BM_MachoPartOfApp", L2_2)
    end
    return mp.CLEAN
  else
    mp.set_mpattribute("BM_MachoPartOfBundleWithoutAppExt")
    if L3_3 then
      MpCommon.BmTriggerSig(L3_3, "BM_MachoPartOfBundleWithoutAppExt", L2_2)
      TrackPidAndTechnique(L3_3, "T1036.005", "DefenseEvasion_Masquerading")
    end
    return mp.INFECTED
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
