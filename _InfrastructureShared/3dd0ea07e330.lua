local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 44540 or L0_0 > 44570 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 14448
L3_3 = 640
L1_1 = L1_1(L2_2, L3_3)
L3_3 = L1_1
L2_2 = L1_1.find
L2_2 = L2_2(L3_3, "\">To protect access to your account, you will need to provide your Discover Bank Account Number,", 1, true)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L1_1.find
L3_3 = L3_3(L1_1, "<form name=\"regForm1\" id=\"regForm1\" method=\"post\" action=\"http://", L2_2 + 98, true)
if L3_3 == nil then
  return mp.CLEAN
end
L3_3 = L1_1:find("/wp-", L3_3 + 74, true)
if L3_3 == nil then
  return mp.CLEAN
end
L3_3 = L1_1:find(".php\" autocomplete=\"on\">", L3_3 + 5, true)
if L3_3 == nil then
  return mp.CLEAN
end
return mp.INFECTED
