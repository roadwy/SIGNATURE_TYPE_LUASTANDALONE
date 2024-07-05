local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
    if not L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
    end
  end
end
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
                  if not L1_1 then
                    L1_1 = hstrlog
                    L1_1 = L1_1[15]
                    L1_1 = L1_1.matched
                    if not L1_1 then
                      L1_1 = hstrlog
                      L1_1 = L1_1[16]
                      L1_1 = L1_1.matched
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
end
L2_2 = hstrlog
L2_2 = L2_2[17]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[18]
  L2_2 = L2_2.matched
  if not L2_2 then
    L2_2 = hstrlog
    L2_2 = L2_2[19]
    L2_2 = L2_2.matched
    if not L2_2 then
      L2_2 = hstrlog
      L2_2 = L2_2[20]
      L2_2 = L2_2.matched
      if not L2_2 then
        L2_2 = hstrlog
        L2_2 = L2_2[21]
        L2_2 = L2_2.matched
        if not L2_2 then
          L2_2 = hstrlog
          L2_2 = L2_2[22]
          L2_2 = L2_2.matched
        end
      end
    end
  end
end
L3_3 = hstrlog
L3_3 = L3_3[23]
L3_3 = L3_3.matched
if not L3_3 then
  L3_3 = hstrlog
  L3_3 = L3_3[24]
  L3_3 = L3_3.matched
  if not L3_3 then
    L3_3 = hstrlog
    L3_3 = L3_3[25]
    L3_3 = L3_3.matched
    if not L3_3 then
      L3_3 = hstrlog
      L3_3 = L3_3[26]
      L3_3 = L3_3.matched
    end
  end
end
if L0_0 then
  L4_4 = 1
else
  L4_4 = L4_4 or 0
end
if L1_1 then
  L5_5 = 1
else
  L5_5 = L5_5 or 0
end
L4_4 = L4_4 + L5_5
if L2_2 then
  L5_5 = 1
else
  L5_5 = L5_5 or 0
end
L4_4 = L4_4 + L5_5
if L3_3 then
  L5_5 = 1
else
  L5_5 = L5_5 or 0
end
L4_4 = L4_4 + L5_5
if L4_4 >= 3 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
