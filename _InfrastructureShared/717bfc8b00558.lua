local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = hstrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = hstrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = hstrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.matched
          end
        end
      end
    end
  end
end
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
                  if L1_1 then
                    L1_1 = hstrlog
                    L1_1 = L1_1[18]
                    L1_1 = L1_1.matched
                    if L1_1 then
                      L1_1 = hstrlog
                      L1_1 = L1_1[19]
                      L1_1 = L1_1.matched
                    end
                  elseif not L1_1 then
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
                              if L1_1 then
                                L1_1 = hstrlog
                                L1_1 = L1_1[26]
                                L1_1 = L1_1.matched
                              elseif not L1_1 then
                                L1_1 = hstrlog
                                L1_1 = L1_1[27]
                                L1_1 = L1_1.matched
                                if L1_1 then
                                  L1_1 = hstrlog
                                  L1_1 = L1_1[28]
                                  L1_1 = L1_1.matched
                                elseif not L1_1 then
                                  L1_1 = hstrlog
                                  L1_1 = L1_1[29]
                                  L1_1 = L1_1.matched
                                  if not L1_1 then
                                    L1_1 = hstrlog
                                    L1_1 = L1_1[30]
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
  end
end
if L0_0 and L1_1 then
  mp.changedetectionname(805306383)
  return mp.INFECTED
end
return mp.CLEAN
