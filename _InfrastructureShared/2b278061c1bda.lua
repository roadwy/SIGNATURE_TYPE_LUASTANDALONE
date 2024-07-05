local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
  end
end
L1_1 = hstrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if not L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.matched
  if not L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.matched
    if not L1_1 then
      L1_1 = hstrlog
      L1_1 = L1_1[7]
      L1_1 = L1_1.matched
      if not L1_1 then
        L1_1 = hstrlog
        L1_1 = L1_1[8]
        L1_1 = L1_1.matched
        if not L1_1 then
          L1_1 = hstrlog
          L1_1 = L1_1[9]
          L1_1 = L1_1.matched
        end
      end
    end
  end
end
L2_2 = hstrlog
L2_2 = L2_2[10]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[11]
  L2_2 = L2_2.matched
  if not L2_2 then
    L2_2 = hstrlog
    L2_2 = L2_2[12]
    L2_2 = L2_2.matched
    if not L2_2 then
      L2_2 = hstrlog
      L2_2 = L2_2[13]
      L2_2 = L2_2.matched
      if not L2_2 then
        L2_2 = hstrlog
        L2_2 = L2_2[14]
        L2_2 = L2_2.matched
        if not L2_2 then
          L2_2 = hstrlog
          L2_2 = L2_2[15]
          L2_2 = L2_2.matched
          if not L2_2 then
            L2_2 = hstrlog
            L2_2 = L2_2[16]
            L2_2 = L2_2.matched
            if not L2_2 then
              L2_2 = hstrlog
              L2_2 = L2_2[17]
              L2_2 = L2_2.matched
            end
          end
        end
      end
    end
  end
end
L3_3 = hstrlog
L3_3 = L3_3[18]
L3_3 = L3_3.matched
if not L3_3 then
  L3_3 = hstrlog
  L3_3 = L3_3[19]
  L3_3 = L3_3.matched
  if not L3_3 then
    L3_3 = hstrlog
    L3_3 = L3_3[20]
    L3_3 = L3_3.matched
    if not L3_3 then
      L3_3 = hstrlog
      L3_3 = L3_3[21]
      L3_3 = L3_3.matched
      if not L3_3 then
        L3_3 = hstrlog
        L3_3 = L3_3[22]
        L3_3 = L3_3.matched
        if not L3_3 then
          L3_3 = hstrlog
          L3_3 = L3_3[23]
          L3_3 = L3_3.matched
        end
      end
    end
  end
end
L4_4 = hstrlog
L4_4 = L4_4[24]
L4_4 = L4_4.matched
if not L4_4 then
  L4_4 = hstrlog
  L4_4 = L4_4[25]
  L4_4 = L4_4.matched
end
if L0_0 then
  L5_5 = 1
else
  L5_5 = L5_5 or 0
end
if L1_1 then
  L6_6 = 1
else
  L6_6 = L6_6 or 0
end
L5_5 = L5_5 + L6_6
if L2_2 then
  L6_6 = 1
else
  L6_6 = L6_6 or 0
end
L5_5 = L5_5 + L6_6
if L3_3 then
  L6_6 = 1
else
  L6_6 = L6_6 or 0
end
L5_5 = L5_5 + L6_6
if L4_4 then
  L6_6 = 1
else
  L6_6 = L6_6 or 0
end
L5_5 = L5_5 + L6_6
if L5_5 >= 3 then
  L6_6 = mp
  L6_6 = L6_6.INFECTED
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
