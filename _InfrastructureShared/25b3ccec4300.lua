local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.ppid
L3_3 = ";ImagePath:"
L4_4 = L1_1
L2_2 = L2_2 .. L3_3 .. L4_4
L3_3 = mp
L3_3 = L3_3.IsKnownFriendlyFile
L4_4 = L1_1
L3_3 = L3_3(L4_4, L5_5, L6_6)
if not L3_3 then
  L3_3 = MpCommon
  L3_3 = L3_3.AppendPersistContextNoPath
  L4_4 = "bm_uacbypass_connmgr"
  L3_3(L4_4, L5_5, L6_6)
end
L3_3 = bm
L3_3 = L3_3.get_process_relationships
L4_4 = L0_0.ppid
L4_4 = L3_3(L4_4)
for _FORV_8_, _FORV_9_ in L5_5(L6_6) do
  if _FORV_9_.ppid and _FORV_9_.image_path and not mp.IsKnownFriendlyFile(_FORV_9_.image_path, true, false) then
    L2_2 = _FORV_9_.ppid .. ";ImagePath:" .. _FORV_9_.ImagePath
    MpCommon.AppendPersistContextNoPath("bm_uacbypass_connmgr", L2_2, 2)
  end
end
return L5_5
