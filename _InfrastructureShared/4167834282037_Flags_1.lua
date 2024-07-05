local L0_0, L1_1, L2_2, L3_3
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
                    if not L1_1 then
                      L1_1 = hstrlog
                      L1_1 = L1_1[23]
                      L1_1 = L1_1.matched
                      if not L1_1 then
                        L1_1 = hstrlog
                        L1_1 = L1_1[24]
                        L1_1 = L1_1.matched
                        if not L1_1 then
                          L1_1 = hstrlog
                          L1_1 = L1_1[25]
                          L1_1 = L1_1.matched
                          if not L1_1 then
                            L1_1 = hstrlog
                            L1_1 = L1_1[26]
                            L1_1 = L1_1.matched
                            if not L1_1 then
                              L1_1 = hstrlog
                              L1_1 = L1_1[27]
                              L1_1 = L1_1.matched
                              if not L1_1 then
                                L1_1 = hstrlog
                                L1_1 = L1_1[28]
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
        end
      end
    end
  end
end
L2_2 = 0
if L0_0 then
  L2_2 = L2_2 + 2
end
if L1_1 then
  L2_2 = L2_2 + 1
end
if L2_2 >= 3 then
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
if L2_2 >= 2 then
  L3_3 = mp
  L3_3 = L3_3.SUSPICIOUS
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
