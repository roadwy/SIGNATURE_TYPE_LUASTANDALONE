local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCPT:Worm:VBS/Jenxcus!Crypt32"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 10000 or L0_0 > 700000 then
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
L2_2 = 0
L3_3 = 8192
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "public%sfunction%s(%l%l%l%l-)%("
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L1_1
L3_3 = L1_1.match
L5_5 = "\r\n?\t(%l%l%l%l-)%s=%s\"%x%x%x%x%x%x%x%x%x%x-"
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L4_4 = L1_1
  L3_3 = L1_1.match
  L5_5 = "\r\n?\t(%l%l%l%l-)%s=%s-chrw%(%d%d%d?%)%s&%schrw%(%d%d%d?%)"
  L3_3 = L3_3(L4_4, L5_5)
end
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L0_0 - 8192
L5_5 = L0_0 - L4_4
L6_6 = mp
L6_6 = L6_6.readfile
L6_6 = L6_6(L4_4, L5_5)
L6_6 = string.lower(L6_6)
if L6_6:match("execute%s-%((%l%l%l%l-)%s-%(%s-[^%l]-%l-[^%l]-%(%d%d%d?%)%s-,(%l%l%l%l-)%)%)") == nil then
  return mp.CLEAN
end
if L6_6:match("execute%s-%((%l%l%l%l-)%s-%(%s-[^%l]-%l-[^%l]-%(%d%d%d?%)%s-,(%l%l%l%l-)%)%)") == nil then
  return mp.CLEAN
end
if L2_2 ~= L6_6:match("execute%s-%((%l%l%l%l-)%s-%(%s-[^%l]-%l-[^%l]-%(%d%d%d?%)%s-,(%l%l%l%l-)%)%)") then
  return mp.CLEAN
end
if L3_3 ~= L6_6:match("execute%s-%((%l%l%l%l-)%s-%(%s-[^%l]-%l-[^%l]-%(%d%d%d?%)%s-,(%l%l%l%l-)%)%)") then
  return mp.CLEAN
end
return mp.SUSPICIOUS
