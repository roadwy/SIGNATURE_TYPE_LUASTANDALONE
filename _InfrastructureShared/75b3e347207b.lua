local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
if L0_0 ~= nil then
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = L6_6.image_path
    if L7_7 ~= nil then
      L7_7 = L6_6.reason
      if L7_7 == bm.RELATIONSHIP_INJECTION then
        L7_7 = string
        L7_7 = L7_7.lower
        L7_7 = L7_7(MpCommon.PathToWin32Path(L6_6.image_path))
        if string.find(L7_7, "\\comodo internet security\\cavwp.exe", -35, true) or string.find(L7_7, "\\hummingheads\\securityplatform\\bkhost.exe", -41, true) then
          return mp.CLEAN
        end
      end
    end
  end
end
if L1_1 ~= nil then
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = L6_6.image_path
    if L7_7 ~= nil then
      L7_7 = L6_6.reason
      if L7_7 == bm.RELATIONSHIP_INJECTION then
        L7_7 = string
        L7_7 = L7_7.lower
        L7_7 = L7_7(MpCommon.PathToWin32Path(L6_6.image_path))
        if string.find(L7_7, "\\acrord32.exe", -13, true) or string.find(L7_7, "\\adobearm.exe", -13, true) or string.find(L7_7, "\\comodo internet security\\cavwp.exe", -35, true) or string.find(L7_7, "\\acrobat reader dc\\reader\\reader_sl.exe", -39, true) or string.find(L7_7, "\\\\hummingheads\\securityplatform\\bkhost.exe", -41, true) or string.find(L7_7, "\\rdrcef.exe", -11, true) then
          return mp.CLEAN
        end
        bm.request_SMS(L6_6.ppid, "l+")
        bm.add_action("SmsAsyncScanEvent", 1)
        bm.trigger_sig("Arya", "Acrord32")
        return mp.INFECTED
      end
    end
  end
end
return L2_2
