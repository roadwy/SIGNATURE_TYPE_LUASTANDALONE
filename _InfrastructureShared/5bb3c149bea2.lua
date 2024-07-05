local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = MpCommon
    L1_1 = L1_1.RequestSmsOnProcess
    L2_2 = L0_0.ppid
    L3_3 = MpCommon
    L3_3 = L3_3.SMS_SCAN_MED
    L1_1(L2_2, L3_3)
  end
end
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L2_2 = bm
L2_2 = L2_2.get_process_relationships
L3_3 = L2_2()
for _FORV_7_, _FORV_8_ in ipairs(L3_3) do
  if _FORV_8_.image_path == L1_1 then
    MpCommon.RequestSmsOnProcess(_FORV_8_.ppid, MpCommon.SMS_SCAN_MED)
  end
end
return mp.INFECTED
