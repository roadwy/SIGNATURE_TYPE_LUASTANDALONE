local L0_0, L1_1, L2_2, L3_3, L4_4
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
if not L1_1 then
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
                          if not L1_1 then
                            L1_1 = hstrlog
                            L1_1 = L1_1[17]
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
      if not L3_3 then
        L3_3 = hstrlog
        L3_3 = L3_3[27]
        L3_3 = L3_3.matched
        if not L3_3 then
          L3_3 = hstrlog
          L3_3 = L3_3[28]
          L3_3 = L3_3.matched
          if not L3_3 then
            L3_3 = hstrlog
            L3_3 = L3_3[29]
            L3_3 = L3_3.matched
            if not L3_3 then
              L3_3 = hstrlog
              L3_3 = L3_3[30]
              L3_3 = L3_3.matched
              if not L3_3 then
                L3_3 = hstrlog
                L3_3 = L3_3[31]
                L3_3 = L3_3.matched
              end
            end
          end
        end
      end
    end
  end
end
L4_4 = peattributes
L4_4 = L4_4.hasexports
if L4_4 then
  L4_4 = pesecs
  L4_4 = L4_4[1]
  L4_4 = L4_4.SizeOfRawData
  L4_4 = L4_4 >= 135168 and L4_4 <= 167936 and L4_4 > 139264 and L4_4 <= 204800 and L4_4 >= 29952 and L4_4 <= 103680
end
if L0_0 and L1_1 and L2_2 and L3_3 and L4_4 then
  mp.changedetectionname(186)
  return mp.INFECTED
end
if L0_0 and L1_1 and L2_2 and L3_3 then
  return mp.SUSPICIOUS
end
return mp.CLEAN
