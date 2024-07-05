local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
if L2_2 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = MpCommon
    L8_8 = L8_8.GetProcessElevationAndIntegrityLevel
    L9_9 = L7_7.ppid
    L8_8 = L8_8(L9_9)
    L9_9 = L8_8.IntegrityLevel
    if L9_9 > L0_0.integrity_level then
      L9_9 = string
      L9_9 = L9_9.lower
      L9_9 = L9_9(L7_7.image_path)
      if string.find(L9_9, "\\system32\\mrt.exe", -17, true) or string.find(L9_9, "\\asep_inv.exe", -13, true) or string.find(L9_9, "\\mpsigstub.exe", -14, true) then
        return mp.CLEAN
      end
      bm.request_SMS(L7_7.ppid, "h+")
      bm.add_action("SmsAsyncScanEvent", 1000)
      bm.trigger_sig("Gouda", "Chrome")
      return mp.INFECTED
    end
  end
end
return L3_3
