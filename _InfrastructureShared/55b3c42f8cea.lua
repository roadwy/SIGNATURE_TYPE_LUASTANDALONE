local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L0_0 = L1_1.utf8p1
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L0_0 ~= nil then
  for L5_5, L6_6 in L2_2(L3_3) do
    L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
    if sysio.IsFileExists(L6_6) and not mp.IsKnownFriendlyFile(L6_6, false, true) then
      bm.request_SMS(L1_1.ppid, "l+")
      bm.add_action("SmsAsyncScanEvent", 1000)
      bm.add_related_file(L6_6)
    end
  end
end
return L2_2
