local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
if L0_0 then
  L1_1 = L0_0.p1
  L1_1 = L1_1 and L0_0.p2
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.utf8p2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "Delay:(%d+);"
L2_2 = L2_2(L3_3, L4_4)
L3_3 = string
L3_3 = L3_3.match
L4_4 = L1_1
L5_5 = "Type:([%w_]+);"
L3_3 = L3_3(L4_4, L5_5)
L4_4 = string
L4_4 = L4_4.match
L5_5 = L1_1
L4_4 = L4_4(L5_5, "Origin:([%w:/%.%d]+);")
if not L3_3 or not L2_2 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.upper
L5_5 = L5_5(L3_3)
L3_3 = L5_5
L5_5 = tonumber
L5_5 = L5_5(L2_2)
L2_2 = L5_5
L5_5 = L3_3.find
L5_5 = L5_5(L3_3, "SMS_", 1, true)
if L5_5 == 1 then
  L5_5 = L3_3.sub
  L5_5 = L5_5(L3_3, -1)
  if L5_5 ~= "H" and L5_5 ~= "M" and L5_5 ~= "L" and L5_5 ~= "1" then
    return mp.CLEAN
  end
  bm.request_SMS(bm.get_current_process_startup_info().ppid, L5_5)
  bm.add_action("SmsAsyncScanEvent", L2_2)
elseif L3_3 == "EMS" then
  L5_5 = bm
  L5_5 = L5_5.add_action
  L5_5("EmsScan", L2_2)
else
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
if L4_4 then
  L5_5 = L4_4.find
  L5_5 = L5_5(L4_4, "Behavior:", 1, true)
  if L5_5 == 1 then
    L5_5 = bm
    L5_5 = L5_5.add_related_string
    L5_5("RelatedBMHits", L4_4, bm.RelatedStringBMReport)
  end
end
L5_5 = mp
L5_5 = L5_5.INFECTED
return L5_5
