local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.match
L1_1 = this_sigattrlog
L1_1 = L1_1[7]
L1_1 = L1_1.utf8p2
L2_2 = "regionsize:(%d+)"
L0_0 = L0_0(L1_1, L2_2)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tonumber
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 < 1024 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = this_sigattrlog
L2_2 = L2_2[9]
L2_2 = L2_2.utf8p1
L3_3 = ";"
L2_2 = L2_2 .. L3_3 .. this_sigattrlog[9].utf8p2
L3_3 = AppendToRollingQueue
L3_3("InjectionRelationship", L1_1.ppid, L2_2, 3600, 1000, 0)
L3_3 = this_sigattrlog
L3_3 = L3_3[7]
L3_3 = L3_3.utf8p2
bm.trigger_sig("BMGenCodeInjector.E", L2_2 .. ";" .. L3_3 .. ";" .. tostring(bm.get_sig_count()))
return mp.CLEAN
