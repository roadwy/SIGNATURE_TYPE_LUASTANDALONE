local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
L2_2 = hstrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
end
L3_3 = hstrlog
L3_3 = L3_3[5]
L3_3 = L3_3.matched
if not L3_3 then
  L3_3 = hstrlog
  L3_3 = L3_3[6]
  L3_3 = L3_3.matched
end
L4_4 = hstrlog
L4_4 = L4_4[7]
L4_4 = L4_4.matched
if not L4_4 then
  L4_4 = hstrlog
  L4_4 = L4_4[8]
  L4_4 = L4_4.matched
end
L5_5 = hstrlog
L5_5 = L5_5[9]
L5_5 = L5_5.matched
if not L5_5 then
  L5_5 = hstrlog
  L5_5 = L5_5[10]
  L5_5 = L5_5.matched
  if not L5_5 then
    L5_5 = hstrlog
    L5_5 = L5_5[11]
    L5_5 = L5_5.matched
    if not L5_5 then
      L5_5 = hstrlog
      L5_5 = L5_5[12]
      L5_5 = L5_5.matched
      if not L5_5 then
        L5_5 = hstrlog
        L5_5 = L5_5[13]
        L5_5 = L5_5.matched
      end
    end
  end
end
L6_6 = 0
if L5_5 then
  L6_6 = L6_6 + 1
end
if L3_3 and L4_4 then
  L6_6 = L6_6 + 2
end
if L1_1 and L2_2 then
  L6_6 = L6_6 + 2
end
if L0_0 then
  L6_6 = L6_6 + 1
end
if L6_6 >= 3 then
  mp.set_mpattribute("HSTR:Win32/Vobfus.gen!Y")
end
if L6_6 >= 6 then
  return mp.INFECTED
end
if L6_6 >= 4 then
  return mp.SUSPICIOUS
end
return mp.CLEAN
