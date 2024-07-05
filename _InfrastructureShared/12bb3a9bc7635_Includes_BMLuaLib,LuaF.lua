local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = isnull
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if not L2_2 then
  L2_2 = isnull
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
else
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
end
else
  L1_1 = L1_1.ppid
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L2_2 = L3_3[2]
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L2_2 = L3_3[3]
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[4]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L2_2 = L3_3[4]
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[5]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L2_2 = L3_3[5]
      else
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
    end
  end
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = L2_2.utf8p2
L5_5 = "^(%d+);regionsize:(%d+);"
L4_4 = L3_3(L4_4, L5_5)
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.format
L5_5 = L5_5("%s in %s. Executable code at base address %d", L0_0, L1_1, L3_3)
bm.add_related_string("ProcessHollowSummary", L5_5, bm.RelatedStringBMReport)
mp.TriggerScanResource("ems", string.format("%s,address:%d,size:%d,options:+", L1_1, L3_3, L4_4))
return mp.INFECTED
