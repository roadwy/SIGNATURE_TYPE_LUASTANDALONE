local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
if L1_1 ~= nil then
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = L6_6.image_path
    if L7_7 ~= nil then
      L7_7 = L6_6.reason
      L8_8 = bm
      L8_8 = L8_8.RELATIONSHIP_INJECTION
      if L7_7 == L8_8 then
        L7_7 = string
        L7_7 = L7_7.lower
        L8_8 = MpCommon
        L8_8 = L8_8.PathToWin32Path
        L8_8 = L8_8(L6_6.image_path)
        L7_7 = L7_7(L8_8, L8_8(L6_6.image_path))
        L8_8 = string
        L8_8 = L8_8.find
        L8_8 = L8_8(L7_7, "\\explorer.exe", -13, true)
        if L8_8 then
          L8_8 = string
          L8_8 = L8_8.lower
          L8_8 = L8_8(MpCommon.PathToWin32Path(bm.get_imagepath()))
          if sysio.IsFileExists(L8_8) and not mp.IsKnownFriendlyFile(L8_8, true, false) then
            bm.add_related_file(L8_8)
            bm.request_SMS(bm.get_current_process_startup_info().ppid, "m+")
            bm.add_action("SmsAsyncScanEvent", 1)
          end
          bm.request_SMS(L6_6.ppid, "m+")
          bm.add_action("SmsAsyncScanEvent", 1)
          bm.trigger_sig("Explorer", "InjectRemoteThread")
          TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
          return mp.INFECTED
        end
      end
    end
  end
end
return L2_2
