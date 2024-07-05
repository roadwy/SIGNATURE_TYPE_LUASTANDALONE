local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L7_7 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3))
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = string
      L1_1 = L1_1.lower
      L7_7 = L2_2(L3_3)
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3))
      L0_0 = L1_1
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = string
        L1_1 = L1_1.lower
        L7_7 = L2_2(L3_3)
        L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3))
        L0_0 = L1_1
      end
    end
  end
end
if L0_0 then
  L1_1 = {
    L2_2,
    L3_3,
    L4_4,
    L5_5
  }
  L5_5 = "\\temp\\.+"
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = string
    L7_7 = L7_7.find
    L7_7 = L7_7(L0_0, L6_6)
    if L7_7 then
      L7_7 = bm
      L7_7 = L7_7.get_current_process_startup_info
      L7_7 = L7_7()
      if L7_7 and next(L7_7) and L7_7.command_line then
        bm.add_related_file(L0_0)
        bm.request_SMS(L7_7.ppid, "M")
        bm.add_action("SmsAsyncScanEvent", 1)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
