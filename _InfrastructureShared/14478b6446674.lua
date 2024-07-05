local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
end
L1_1 = hstrlog
L1_1 = L1_1[9]
L1_1 = L1_1.matched
if not L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[10]
  L1_1 = L1_1.matched
  if not L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[11]
    L1_1 = L1_1.matched
    if not L1_1 then
      L1_1 = hstrlog
      L1_1 = L1_1[12]
      L1_1 = L1_1.matched
      if not L1_1 then
        L1_1 = hstrlog
        L1_1 = L1_1[13]
        L1_1 = L1_1.matched
        if not L1_1 then
          L1_1 = hstrlog
          L1_1 = L1_1[14]
          L1_1 = L1_1.matched
        end
      end
    end
  end
end
L2_2 = hstrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if not L2_2 then
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
  end
end
L3_3 = hstrlog
L3_3 = L3_3[15]
L3_3 = L3_3.matched
L4_4 = 0
if L0_0 then
  L4_4 = L4_4 + 1
end
if L1_1 then
  L4_4 = L4_4 + 1
end
if L2_2 then
  L4_4 = L4_4 + 1
end
if L3_3 then
  L4_4 = L4_4 + 1
end
if L4_4 >= 2 then
  L5_5 = mp
  L5_5 = L5_5.SUSPICIOUS
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
