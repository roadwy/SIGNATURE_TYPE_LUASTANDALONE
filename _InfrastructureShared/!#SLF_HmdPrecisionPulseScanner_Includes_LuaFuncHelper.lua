local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = MpCommon
L0_0 = L0_0.NidSearch
L1_1 = mp
L1_1 = L1_1.NID_ENABLE_EXTENDED_BAFS
L2_2 = 7
L0_0 = L0_0(L1_1, L2_2)
if L0_0 then
  L0_0 = "hmdprecisionpulse"
  L1_1 = "scan_counter"
  L2_2 = "max_scan"
  L3_3 = 60
  L4_4 = 500
  L5_5 = MpCommon
  L5_5 = L5_5.AtomicCounterValueNamespaced
  L6_6 = L1_1
  L7_7 = L0_0
  L5_5 = L5_5(L6_6, L7_7)
  if L5_5 == nil then
    L6_6 = MpCommon
    L6_6 = L6_6.AtomicCounterSetNamespaced
    L7_7 = L1_1
    L8_8 = L0_0
    L6_6(L7_7, L8_8, 0, L3_3)
    L5_5 = 0
  end
  L6_6 = MpCommon
  L6_6 = L6_6.AtomicCounterValueNamespaced
  L7_7 = L2_2
  L8_8 = L0_0
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 == nil then
    L7_7 = MpCommon
    L7_7 = L7_7.AtomicCounterSetNamespaced
    L8_8 = L2_2
    L7_7(L8_8, L0_0, L4_4, L3_3)
    L6_6 = L4_4
  end
  if L5_5 >= L6_6 then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = mp
  L7_7 = L7_7.getfilename
  L8_8 = mp
  L8_8 = L8_8.bitor
  L8_8 = L8_8(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
  L8_8 = L7_7(L8_8, L8_8(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if L7_7 == nil or L8_8 == nil then
    return mp.CLEAN
  end
  L8_8 = split(L8_8, "->")[1]
  if string.sub(L7_7, 0, 4) == "\\\\?\\" then
    L7_7 = string.sub(L7_7, 5)
  end
  if split(L7_7, "\\")[2] == nil then
    return mp.CLEAN
  end
  if pcall(MpCommon.RollingQueueQueryKeyNamespaced, "hmdprecisionpulsefolderscan", L0_0, L7_7) and pcall(MpCommon.RollingQueueQueryKeyNamespaced, "hmdprecisionpulsefolderscan", L0_0, L7_7) then
    mp.set_mpattribute("MpNonPIIFileType")
    if L6_6 <= MpCommon.AtomicCounterAddNamespaced(L1_1, L0_0, 1) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
  if pcall(MpCommon.RollingQueueQueryKeyNamespaced, "hmdprecisionpulsefullfilepathscan", L0_0, L7_7 .. "\\" .. L8_8) and pcall(MpCommon.RollingQueueQueryKeyNamespaced, "hmdprecisionpulsefullfilepathscan", L0_0, L7_7 .. "\\" .. L8_8) then
    mp.set_mpattribute("MpNonPIIFileType")
    if L6_6 <= MpCommon.AtomicCounterAddNamespaced(L1_1, L0_0, 1) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
  if pcall(MpCommon.RollingQueueQueryKeyNamespaced, "hmdprecisionpulsescanfile", L0_0, L8_8) and pcall(MpCommon.RollingQueueQueryKeyNamespaced, "hmdprecisionpulsescanfile", L0_0, L8_8) then
    mp.set_mpattribute("MpNonPIIFileType")
    if L6_6 <= MpCommon.AtomicCounterAddNamespaced(L1_1, L0_0, 1) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
