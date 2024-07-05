local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = bm
    L1_1 = L1_1.request_SMS
    L2_2 = L0_0.ppid
    L1_1(L2_2, L3_3)
    L1_1 = bm
    L1_1 = L1_1.add_action
    L2_2 = "SmsAsyncScanEvent"
    L1_1(L2_2, L3_3)
    L1_1 = mp
    L1_1 = L1_1.INFECTED
    return L1_1
  end
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
if L1_1 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 ~= nil then
      L8_8 = string
      L8_8 = L8_8.lower
      L8_8 = L8_8(MpCommon.PathToWin32Path(L7_7.image_path))
      if L7_7.reason_ex == bm.RELATIONSHIP_CREATED and sysio.IsFileExists(L8_8) then
        bm.add_related_file(L8_8)
        bm.request_SMS(L7_7.ppid, "h+")
        bm.add_action("SmsAsyncScanEvent", 1)
      end
    end
  end
end
return L3_3
