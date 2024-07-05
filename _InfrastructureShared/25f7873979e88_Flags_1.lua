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
  L1_1 = L1_1[7]
  L1_1 = L1_1.matched
  if not L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[9]
    L1_1 = L1_1.matched
  end
elseif L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[6]
  L1_1 = L1_1.matched
  if not L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[8]
    L1_1 = L1_1.matched
    if not L1_1 then
      L1_1 = hstrlog
      L1_1 = L1_1[10]
      L1_1 = L1_1.matched
    end
  end
end
L2_2 = hstrlog
L2_2 = L2_2[25]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[26]
  L2_2 = L2_2.matched
  if not L2_2 then
    L2_2 = hstrlog
    L2_2 = L2_2[27]
    L2_2 = L2_2.matched
  end
end
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
                    if not L3_3 then
                      L3_3 = hstrlog
                      L3_3 = L3_3[22]
                      L3_3 = L3_3.matched
                      if not L3_3 then
                        L3_3 = hstrlog
                        L3_3 = L3_3[23]
                        L3_3 = L3_3.matched
                        if not L3_3 then
                          L3_3 = hstrlog
                          L3_3 = L3_3[24]
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
    end
  end
end
L4_4 = 0
if L0_0 or L1_1 then
  L4_4 = L4_4 + 2
end
if L2_2 then
  L4_4 = L4_4 + 1
end
if L3_3 then
  L4_4 = L4_4 + 1
end
if L4_4 == 4 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
if L4_4 >= 3 then
  L5_5 = mp
  L5_5 = L5_5.SUSPICIOUS
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
