local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
if L1_1 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 ~= nil then
      L8_8 = L7_7.reason
      if L8_8 == bm.RELATIONSHIP_INJECTION then
        L8_8 = string
        L8_8 = L8_8.lower
        L8_8 = L8_8(MpCommon.PathToWin32Path(L7_7.image_path))
        if string.find(L8_8, "\\comodo internet security\\cavwp.exe", -35, true) or string.find(L8_8, "\\hummingheads\\securityplatform\\bkhost.exe", -41, true) then
          return mp.CLEAN
        end
      end
    end
  end
end
if L2_2 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 ~= nil then
      L8_8 = L7_7.reason
      if L8_8 == bm.RELATIONSHIP_INJECTION then
        L8_8 = string
        L8_8 = L8_8.lower
        L8_8 = L8_8(MpCommon.PathToWin32Path(L7_7.image_path))
        if string.find(L8_8, "\\acrord32.exe", -13, true) or string.find(L8_8, "\\adobearm.exe", -13, true) or string.find(L8_8, "\\comodo internet security\\cavwp.exe", -35, true) or string.find(L8_8, "\\acrobat reader dc\\reader\\reader_sl.exe", -39, true) or string.find(L8_8, "\\hummingheads\\securityplatform\\bkhost.exe", -41, true) or string.find(L8_8, "\\rdrcef.exe", -11, true) then
          return mp.CLEAN
        end
        if MpCommon.GetProcessElevationAndIntegrityLevel(L7_7.ppid).IntegrityLevel > L0_0.integrity_level then
          bm.request_SMS(L7_7.ppid, "l+")
          bm.add_action("SmsAsyncScanEvent", 1)
          bm.trigger_sig("Arya", "Acrord32")
          return mp.INFECTED
        end
      end
    end
  end
end
return L3_3
