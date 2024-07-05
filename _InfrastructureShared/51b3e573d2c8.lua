local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.utf8p2
if L0_0 then
  L1_1 = #L0_0
elseif L1_1 < 8 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "--%x+"
L2_2 = L1_1(L2_2, L3_3)
if L1_1 == 1 and not (L2_2 < L1_1) then
  L3_3 = L2_2 - L1_1
elseif L3_3 < 8 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = bm
L3_3 = L3_3.get_imagepath
L3_3 = L3_3()
L4_4 = bm
L4_4 = L4_4.get_process_relationships
L5_5 = L4_4()
for _FORV_9_, _FORV_10_ in ipairs(L5_5) do
  if _FORV_10_.image_path == L3_3 then
    MpCommon.RequestSmsOnProcess(_FORV_10_.ppid, MpCommon.SMS_SCAN_MED)
  end
end
return mp.INFECTED
