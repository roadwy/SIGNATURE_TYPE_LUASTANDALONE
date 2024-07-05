local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.hasexports
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.epinfirstsect
    if L0_0 then
      L0_0 = pehdr
      L0_0 = L0_0.NumberOfSections
      if L0_0 == 5 then
        L0_0 = peattributes
        L0_0 = L0_0.no_tls
        if L0_0 then
          L0_0 = pehdr
          L0_0 = L0_0.SizeOfImage
          if L0_0 >= 700416 then
            L0_0 = pehdr
            L0_0 = L0_0.SizeOfImage
            if L0_0 <= 851968 then
              L0_0 = pesecs
              L1_1 = pevars
              L1_1 = L1_1.epsec
              L0_0 = L0_0[L1_1]
              L0_0 = L0_0.SizeOfRawData
              if L0_0 >= 196608 then
                L0_0 = pesecs
                L1_1 = pevars
                L1_1 = L1_1.epsec
                L0_0 = L0_0[L1_1]
                L0_0 = L0_0.SizeOfRawData
                if L0_0 <= 294912 then
                  L0_0 = pesecs
                  L0_0 = L0_0[2]
                  L0_0 = L0_0.SizeOfRawData
                  if L0_0 >= 12288 then
                    L0_0 = pesecs
                    L0_0 = L0_0[2]
                    L0_0 = L0_0.SizeOfRawData
                    if L0_0 <= 16384 then
                      L0_0 = pesecs
                      L0_0 = L0_0[5]
                      L0_0 = L0_0.VirtualSize
                      if L0_0 >= 12288 then
                        L0_0 = pesecs
                        L0_0 = L0_0[5]
                        L0_0 = L0_0.VirtualSize
                        if L0_0 <= 24576 then
                          L0_0 = pesecs
                          L0_0 = L0_0[3]
                          L0_0 = L0_0.SizeOfRawData
                          if L0_0 == 2560 then
                            L0_0 = pesecs
                            L0_0 = L0_0[3]
                            L0_0 = L0_0.VirtualSize
                            if L0_0 >= 425984 then
                              L0_0 = pesecs
                              L0_0 = L0_0[3]
                              L0_0 = L0_0.VirtualSize
                              if L0_0 <= 491520 then
                                L0_0 = pesecs
                                L1_1 = pehdr
                                L1_1 = L1_1.NumberOfSections
                                L0_0 = L0_0[L1_1]
                                L0_0 = L0_0.Name
                                if L0_0 == ".reloc" then
                                  L0_0 = pesecs
                                  L1_1 = pevars
                                  L1_1 = L1_1.epsec
                                  L0_0 = L0_0[L1_1]
                                  L0_0 = L0_0.Name
                                  if L0_0 == ".text" then
                                    L0_0 = mp
                                    L0_0 = L0_0.INFECTED
                                    return L0_0
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
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
