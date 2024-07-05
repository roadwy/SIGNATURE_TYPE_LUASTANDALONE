local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
if L2_2 ~= nil then
  for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
    if MpCommon.GetProcessElevationAndIntegrityLevel(_FORV_7_.ppid).IntegrityLevel > L0_0.integrity_level then
      bm.request_SMS(_FORV_7_.ppid, "l+")
      bm.add_action("SmsAsyncScanEvent", 1)
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
