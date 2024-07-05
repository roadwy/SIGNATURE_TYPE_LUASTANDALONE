local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = peattributes
L0_0 = L0_0.hasstandardentry
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
end
L1_1 = hstrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.matched
end
L2_2 = hstrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[6]
  L2_2 = L2_2.matched
  if not L2_2 then
    L2_2 = hstrlog
    L2_2 = L2_2[7]
    L2_2 = L2_2.matched
    if not L2_2 then
      L2_2 = hstrlog
      L2_2 = L2_2[8]
      L2_2 = L2_2.matched
    end
  end
end
L3_3 = hstrlog
L3_3 = L3_3[9]
L3_3 = L3_3.matched
if not L3_3 then
  L3_3 = hstrlog
  L3_3 = L3_3[10]
  L3_3 = L3_3.matched
end
L4_4 = hstrlog
L4_4 = L4_4[11]
L4_4 = L4_4.matched
if not L4_4 then
  L4_4 = hstrlog
  L4_4 = L4_4[12]
  L4_4 = L4_4.matched
  if not L4_4 then
    L4_4 = hstrlog
    L4_4 = L4_4[13]
    L4_4 = L4_4.matched
    if not L4_4 then
      L4_4 = hstrlog
      L4_4 = L4_4[14]
      L4_4 = L4_4.matched
    end
  end
end
L5_5 = hstrlog
L5_5 = L5_5[15]
L5_5 = L5_5.matched
if not L5_5 then
  L5_5 = hstrlog
  L5_5 = L5_5[16]
  L5_5 = L5_5.matched
end
if L0_0 then
  L6_6 = 1
else
  L6_6 = L6_6 or 0
end
if L1_1 then
  L7_7 = 1
else
  L7_7 = L7_7 or 0
end
L6_6 = L6_6 + L7_7
if L2_2 then
  L7_7 = 1
else
  L7_7 = L7_7 or 0
end
L6_6 = L6_6 + L7_7
if L3_3 then
  L7_7 = 1
else
  L7_7 = L7_7 or 0
end
L6_6 = L6_6 + L7_7
if L4_4 then
  L7_7 = 1
else
  L7_7 = L7_7 or 0
end
L6_6 = L6_6 + L7_7
if L5_5 then
  L7_7 = 1
else
  L7_7 = L7_7 or 0
end
L6_6 = L6_6 + L7_7
if L6_6 >= 3 then
  L7_7 = mp
  L7_7 = L7_7.INFECTED
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
