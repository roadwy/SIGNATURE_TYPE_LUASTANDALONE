local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p1
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = 3
while L2_2 > 0 do
  if L1_1 then
    L3_3 = L1_1.ppid
  elseif not L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = bm
  L3_3 = L3_3.get_process_relationships
  L4_4 = L1_1.ppid
  L4_4 = L3_3(L4_4)
  for _FORV_8_, _FORV_9_ in L5_5(L6_6) do
    if _FORV_9_ and _FORV_9_.ppid then
      bm.trigger_sig("BM_WebServerFileDrop", L0_0, _FORV_9_.ppid)
    end
  end
  L1_1 = L5_5
  L2_2 = L2_2 - 1
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
