local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_SMS_level
L2_2 = L0_0.ppid
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SMS_SCAN_LOW_ADV
L3_3 = mp
L3_3 = L3_3.SMS_SCAN_LOW
L2_2 = L2_2 - L3_3
L3_3 = mp
L3_3 = L3_3.bitand
L4_4 = L1_1
L5_5 = L2_2
L3_3 = L3_3(L4_4, L5_5)
if L2_2 == L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = bm
L3_3 = L3_3.get_imagepath
L3_3 = L3_3()
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = MpCommon
L5_5 = L5_5.PathToWin32Path
L6_6 = L3_3
L9_9 = L5_5(L6_6)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L5_5(L6_6))
L3_3 = L4_4
L4_4 = sysio
L4_4 = L4_4.IsFileExists
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = sysio
L4_4 = L4_4.GetFileLastWriteTime
L5_5 = L3_3
L4_4 = L4_4(L5_5)
L5_5 = sysio
L5_5 = L5_5.GetLastResult
L5_5 = L5_5()
L5_5 = L5_5.Success
if not L5_5 or L4_4 == 0 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L4_4 / 10000000
L4_4 = L5_5 - 11644473600
L5_5 = MpCommon
L5_5 = L5_5.GetCurrentTimeT
L5_5 = L5_5()
if L4_4 >= L5_5 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = L5_5 - L4_4
L6_6 = L6_6 / 60
L7_7 = L6_6 <= 20160
if not L7_7 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = bm
L8_8 = L8_8.get_process_relationships
L9_9 = L8_8()
if L9_9 ~= nil then
  for _FORV_13_, _FORV_14_ in ipairs(L9_9) do
    if _FORV_14_.image_path ~= nil and _FORV_14_.reason == bm.RELATIONSHIP_INJECTION then
      bm.request_SMS(_FORV_14_.ppid, "l+")
      bm.add_action("SmsAsyncScanEvent", 1000)
      TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
