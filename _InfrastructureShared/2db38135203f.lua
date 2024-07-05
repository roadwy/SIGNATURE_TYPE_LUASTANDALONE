local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = L7_7.image_path
  if L8_8 ~= nil then
    L8_8 = mp
    L8_8 = L8_8.bitand
    L8_8 = L8_8(L7_7.reason_ex, 1)
    if L8_8 == 1 then
      L8_8 = string
      L8_8 = L8_8.find
      L8_8 = L8_8(string.lower(L7_7.image_path), "\\msiexec.exe", 1, true)
      if L8_8 then
        L8_8 = mp
        L8_8 = L8_8.CLEAN
        return L8_8
      end
    end
  end
end
if L3_3 then
  if L3_3 ~= nil then
    L0_0 = L3_3.utf8p2
    for L7_7, L8_8 in L4_4(L5_5) do
      L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
      if sysio.IsFileExists(L8_8) and string.sub(L8_8, -12) ~= "rundll32.exe" and sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L8_8) ~= 0 then
        if MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L8_8) / 10000000 - 11644473600) <= 3600 then
          bm.request_SMS(bm.get_current_process_startup_info().ppid, "M")
          bm.add_action("SmsAsyncScanEvent", 3000)
        end
        if MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L8_8) / 10000000 - 11644473600) <= 7200 then
          bm.add_related_file(L8_8)
          return mp.INFECTED
        end
      end
    end
  end
end
return L3_3
