local L0_0, L1_1
L0_0 = 0
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if not L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if not L1_1 then
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
elseif L1_1 then
  L0_0 = L0_0 + 1
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
elseif L1_1 then
  L0_0 = L0_0 + 1
end
if L0_0 == 2 then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
