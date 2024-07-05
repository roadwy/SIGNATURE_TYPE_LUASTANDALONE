local L0_0, L1_1, L2_2, L3_3, L4_4
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
      if not L0_0 then
        L0_0 = hstrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if not L0_0 then
          L0_0 = hstrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.matched
          if not L0_0 then
            L0_0 = hstrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.matched
            if not L0_0 then
              L0_0 = hstrlog
              L0_0 = L0_0[8]
              L0_0 = L0_0.matched
              if not L0_0 then
                L0_0 = hstrlog
                L0_0 = L0_0[9]
                L0_0 = L0_0.matched
                if not L0_0 then
                  L0_0 = hstrlog
                  L0_0 = L0_0[10]
                  L0_0 = L0_0.matched
                  if not L0_0 then
                    L0_0 = hstrlog
                    L0_0 = L0_0[11]
                    L0_0 = L0_0.matched
                    if not L0_0 then
                      L0_0 = hstrlog
                      L0_0 = L0_0[12]
                      L0_0 = L0_0.matched
                      if not L0_0 then
                        L0_0 = hstrlog
                        L0_0 = L0_0[13]
                        L0_0 = L0_0.matched
                        if not L0_0 then
                          L0_0 = hstrlog
                          L0_0 = L0_0[14]
                          L0_0 = L0_0.matched
                          if not L0_0 then
                            L0_0 = hstrlog
                            L0_0 = L0_0[15]
                            L0_0 = L0_0.matched
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
end
L1_1 = hstrlog
L1_1 = L1_1[16]
L1_1 = L1_1.matched
if not L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[17]
  L1_1 = L1_1.matched
  if not L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[18]
    L1_1 = L1_1.matched
    if not L1_1 then
      L1_1 = hstrlog
      L1_1 = L1_1[19]
      L1_1 = L1_1.matched
      if not L1_1 then
        L1_1 = hstrlog
        L1_1 = L1_1[20]
        L1_1 = L1_1.matched
        if not L1_1 then
          L1_1 = hstrlog
          L1_1 = L1_1[21]
          L1_1 = L1_1.matched
          if not L1_1 then
            L1_1 = hstrlog
            L1_1 = L1_1[22]
            L1_1 = L1_1.matched
          end
        end
      end
    end
  end
end
L2_2 = hstrlog
L2_2 = L2_2[23]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[24]
  L2_2 = L2_2.matched
  if not L2_2 then
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
        if not L2_2 then
          L2_2 = hstrlog
          L2_2 = L2_2[29]
          L2_2 = L2_2.matched
          if not L2_2 then
            L2_2 = hstrlog
            L2_2 = L2_2[30]
            L2_2 = L2_2.matched
            if not L2_2 then
              L2_2 = hstrlog
              L2_2 = L2_2[31]
              L2_2 = L2_2.matched
            end
          end
        end
      end
    end
  end
end
if L0_0 then
  L3_3 = 1
else
  L3_3 = L3_3 or 0
end
if L1_1 then
  L4_4 = 1
else
  L4_4 = L4_4 or 0
end
L3_3 = L3_3 + L4_4
if L2_2 then
  L4_4 = 1
else
  L4_4 = L4_4 or 0
end
L3_3 = L3_3 + L4_4
if L3_3 >= 2 then
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
