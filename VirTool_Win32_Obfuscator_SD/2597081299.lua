local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "TARG:Worm:VBS/Jenxcus!Crypt5"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 100000 or L0_0 > 500000 then
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
L4_4 = "dim%s%l-%s-for%seach%s(%l-)%sin%s%l-%s-if%s(%l-).name%s="
L3_3 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L2_2 ~= L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = tostring
L4_4 = L4_4(footerpage)
L4_4 = string.lower(L4_4)
if L4_4:match("dim%s%l-%s-(%l-)%s=%s%l-%(%l-%)") == nil then
  return mp.CLEAN
end
if L4_4:match("executeglobal%((%l-)%)") == nil then
  return mp.CLEAN
end
if L4_4:match("dim%s%l-%s-(%l-)%s=%s%l-%(%l-%)") ~= L4_4:match("executeglobal%((%l-)%)") then
  return mp.CLEAN
end
return mp.SUSPICIOUS
