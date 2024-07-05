local L1_0, L2_1
L1_0 = false
L2_1 = hstrlog
L2_1 = L2_1[15]
L2_1 = L2_1.matched
if L2_1 then
  L2_1 = hstrlog
  L2_1 = L2_1[16]
  L2_1 = L2_1.matched
  if not L2_1 then
    L2_1 = hstrlog
    L2_1 = L2_1[17]
    L2_1 = L2_1.matched
    if not L2_1 then
      L2_1 = hstrlog
      L2_1 = L2_1[18]
      L2_1 = L2_1.matched
      if not L2_1 then
        L2_1 = hstrlog
        L2_1 = L2_1[19]
        L2_1 = L2_1.matched
      end
    end
  elseif L2_1 then
    L1_0 = true
  end
end
L2_1 = hstrlog
L2_1 = L2_1[1]
L2_1 = L2_1.matched
if L2_1 then
  L2_1 = hstrlog
  L2_1 = L2_1[6]
  L2_1 = L2_1.matched
  if L2_1 then
    L2_1 = peattributes
    L2_1 = L2_1.isexe
    if L2_1 then
      L2_1 = peattributes
      L2_1 = L2_1.headerchecksum0
      if L2_1 then
        L2_1 = peattributes
        L2_1 = L2_1.no_comruntime
        if not L2_1 then
          L2_1 = pehdr
          L2_1 = L2_1.NumberOfSections
          if L2_1 == 3 then
            L2_1 = pesecs
            L2_1 = L2_1[1]
            L2_1 = L2_1.Name
            if L2_1 == ".text" then
              L2_1 = pesecs
              L2_1 = L2_1[2]
              L2_1 = L2_1.Name
              if L2_1 == ".rsrc" then
                L2_1 = pesecs
                L2_1 = L2_1[pehdr.NumberOfSections]
                L2_1 = L2_1.Name
                if L2_1 == ".reloc" then
                  L2_1 = hstrlog
                  L2_1 = L2_1[7]
                  L2_1 = L2_1.matched
                  if not L2_1 then
                    L2_1 = hstrlog
                    L2_1 = L2_1[8]
                    L2_1 = L2_1.matched
                    if not L2_1 then
                      L2_1 = hstrlog
                      L2_1 = L2_1[9]
                      L2_1 = L2_1.matched
                    elseif L2_1 then
                      L2_1 = hstrlog
                      L2_1 = L2_1[10]
                      L2_1 = L2_1.matched
                      if not L2_1 then
                        L2_1 = hstrlog
                        L2_1 = L2_1[11]
                        L2_1 = L2_1.matched
                      elseif L2_1 then
                        L2_1 = hstrlog
                        L2_1 = L2_1[12]
                        L2_1 = L2_1.matched
                        if not L2_1 then
                          L2_1 = hstrlog
                          L2_1 = L2_1[13]
                          L2_1 = L2_1.matched
                        end
                      end
                    end
                  else
                    if L2_1 then
                      L2_1 = hstrlog
                      L2_1 = L2_1[14]
                      L2_1 = L2_1.matched
                      if L2_1 or L1_0 then
                        L2_1 = mp
                        L2_1 = L2_1.INFECTED
                        return L2_1
                      else
                        L2_1 = hstrlog
                        L2_1 = L2_1[2]
                        L2_1 = L2_1.matched
                        if not L2_1 then
                          L2_1 = hstrlog
                          L2_1 = L2_1[3]
                          L2_1 = L2_1.matched
                          if not L2_1 then
                            L2_1 = hstrlog
                            L2_1 = L2_1[4]
                            L2_1 = L2_1.matched
                            if not L2_1 then
                              L2_1 = hstrlog
                              L2_1 = L2_1[5]
                              L2_1 = L2_1.matched
                            end
                          end
                        else
                          if L2_1 then
                            L2_1 = mp
                            L2_1 = L2_1.INFECTED
                            return L2_1
                        end
                        else
                          L2_1 = hstrlog
                          L2_1 = L2_1[20]
                          L2_1 = L2_1.matched
                          if L2_1 then
                            L2_1 = mp
                            L2_1 = L2_1.INFECTED
                            return L2_1
                          else
                            L2_1 = mp
                            L2_1 = L2_1.SUSPICIOUS
                            return L2_1
                          end
                        end
                      end
                  end
                  else
                    L2_1 = mp
                    L2_1 = L2_1.CLEAN
                    return L2_1
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
L2_1 = mp
L2_1 = L2_1.CLEAN
return L2_1
