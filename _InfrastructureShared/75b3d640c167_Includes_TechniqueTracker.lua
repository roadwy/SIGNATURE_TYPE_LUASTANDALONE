local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
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
        L9_9 = bm
        L9_9 = L9_9.get_imagepath
        L9_9 = L9_9()
        L9_9 = L8_8(L9_9, L9_9())
        L7_7 = L7_7(L8_8, L9_9, L8_8(L9_9, L9_9()))
        L8_8 = bm
        L8_8 = L8_8.get_current_process_startup_info
        L8_8 = L8_8()
        L9_9 = sysio
        L9_9 = L9_9.IsFileExists
        L9_9 = L9_9(L7_7)
        if L9_9 then
          L9_9 = mp
          L9_9 = L9_9.IsKnownFriendlyFile
          L9_9 = L9_9(L7_7, true, false)
          if not L9_9 then
            L9_9 = bm
            L9_9 = L9_9.request_SMS
            L9_9(L8_8.ppid, "h+")
            L9_9 = bm
            L9_9 = L9_9.add_action
            L9_9("SmsAsyncScanEvent", 1)
          end
        end
        L9_9 = string
        L9_9 = L9_9.lower
        L9_9 = L9_9(MpCommon.PathToWin32Path(L6_6.image_path))
        if string.find(L9_9, "\\explorer.exe", -13, true) then
          bm.request_SMS(L6_6.ppid, "h+")
          bm.add_action("SmsAsyncScanEvent", 1)
          bm.trigger_sig("Explorer", "InjectQueueUserAPC")
          TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
          return mp.INFECTED
        end
      end
    end
  end
end
return L2_2
