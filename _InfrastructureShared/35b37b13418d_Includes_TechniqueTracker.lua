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
        L8_8 = L8_8(bm.get_imagepath())
        L7_7 = L7_7(L8_8, L8_8(bm.get_imagepath()))
        L8_8 = sysio
        L8_8 = L8_8.IsFileExists
        L8_8 = L8_8(L7_7)
        if L8_8 then
          L8_8 = mp
          L8_8 = L8_8.IsKnownFriendlyFile
          L8_8 = L8_8(L7_7, true, false)
          if not L8_8 then
            L8_8 = bm
            L8_8 = L8_8.add_related_file
            L8_8(L7_7)
          end
        end
        L8_8 = string
        L8_8 = L8_8.lower
        L8_8 = L8_8(MpCommon.PathToWin32Path(L6_6.image_path))
        if string.find(L8_8, "\\explorer.exe", -13, true) then
          bm.request_SMS(L6_6.ppid, "h+")
          bm.add_action("SmsAsyncScanEvent", 1)
          bm.trigger_sig("Explorer", "WriteVM")
          TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
          return mp.INFECTED
        end
      end
    end
  end
end
return L2_2
