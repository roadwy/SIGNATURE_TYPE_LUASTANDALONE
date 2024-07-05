local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
L3_3 = hstrlog
L3_3 = L3_3[11]
L3_3 = L3_3.matched
if not L3_3 then
  L3_3 = hstrlog
  L3_3 = L3_3[12]
  L3_3 = L3_3.matched
  if not L3_3 then
    L3_3 = hstrlog
    L3_3 = L3_3[13]
    L3_3 = L3_3.matched
    if not L3_3 then
      L3_3 = hstrlog
      L3_3 = L3_3[14]
      L3_3 = L3_3.matched
      if not L3_3 then
        L3_3 = hstrlog
        L3_3 = L3_3[15]
        L3_3 = L3_3.matched
        if not L3_3 then
          L3_3 = hstrlog
          L3_3 = L3_3[16]
          L3_3 = L3_3.matched
          if not L3_3 then
            L3_3 = hstrlog
            L3_3 = L3_3[17]
            L3_3 = L3_3.matched
            if not L3_3 then
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
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L4_4 = hstrlog
L4_4 = L4_4[22]
L4_4 = L4_4.matched
L5_5 = hstrlog
L5_5 = L5_5[23]
L5_5 = L5_5.matched
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
