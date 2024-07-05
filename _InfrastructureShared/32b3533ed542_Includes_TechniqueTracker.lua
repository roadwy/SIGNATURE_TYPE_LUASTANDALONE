local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L2_2 = 60
L3_3 = 10
L4_4 = 20
L5_5 = 100
L6_6 = "Scan_"
L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13 = nil, nil, nil, nil, nil, nil, nil
L1_1 = this_sigattrlog[1].utf8p2
L8_8 = string.match(L1_1, "DestIp=([^;]*);")
L9_9 = string.match(L1_1, "DestPort=([^;]*);")
if L8_8 == nil or L8_8 == "" or L9_9 == nil or L9_9 == "" then
  return mp.CLEAN
end
if bm.get_current_process_startup_info() and bm.get_current_process_startup_info().ppid then
  L0_0 = bm.get_current_process_startup_info().ppid
else
  return mp.CLEAN
end
L7_7 = L6_6 .. L0_0
L10_10, L11_11 = pcall(MpCommon.RollingQueueCreate, L7_7, L5_5, L2_2)
if not L10_10 then
  return mp.CLEAN
end
L10_10, L11_11 = pcall(MpCommon.RollingQueueQueryMultiKey, L7_7, L8_8)
if not L10_10 then
  return mp.CLEAN
end
if L11_11 and type(L11_11) == "table" then
  for _FORV_18_, _FORV_19_ in pairs(L11_11) do
    if _FORV_19_ and _FORV_19_.value == L9_9 then
      return mp.CLEAN
    end
  end
end
L10_10, L11_11 = pcall(MpCommon.RollingQueueAppend, L7_7, L8_8, L9_9, L2_2)
if not L10_10 then
  return mp.CLEAN
end
L10_10, L11_11 = pcall(MpCommon.RollingQueueCountOfUniqueKeys, L7_7)
if not L10_10 then
  return mp.CLEAN
end
L12_12 = L11_11
L10_10, L11_11 = pcall(MpCommon.RollingQueueCount, L7_7)
if not L10_10 then
  return mp.CLEAN
end
L13_13 = L11_11 / L12_12
if L3_3 < L12_12 or L4_4 < L13_13 then
  TrackPidAndTechniqueBM(L0_0, "T1046", "Discovery_NetworkScanning")
  L10_10, L11_11 = pcall(MpCommon.RollingQueueErase, L7_7)
  return mp.INFECTED
end
return mp.CLEAN
