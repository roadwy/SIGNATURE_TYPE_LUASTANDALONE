local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = epcode
  L0_0 = L0_0[1]
  if L0_0 == 106 then
    L0_0 = epcode
    L0_0 = L0_0[2]
    if L0_0 == 16 then
      L0_0 = epcode
      L0_0 = L0_0[3]
      if L0_0 == 104 then
        L0_0 = epcode
        L0_0 = L0_0[4]
        if L0_0 == 0 then
          L0_0 = epcode
          L0_0 = L0_0[5]
          if L0_0 == 2 then
            L0_0 = epcode
            L0_0 = L0_0[6]
            if L0_0 == 0 then
              L0_0 = epcode
              L0_0 = L0_0[7]
              if L0_0 == 0 then
                L0_0 = epcode
                L0_0 = L0_0[8]
                if L0_0 == 104 then
                  L0_0 = epcode
                  L0_0 = L0_0[9]
                  if L0_0 == 44 then
                    L0_0 = epcode
                    L0_0 = L0_0[10]
                    if L0_0 == 250 then
                      L0_0 = epcode
                      L0_0 = L0_0[11]
                      if L0_0 == 250 then
                        L0_0 = epcode
                        L0_0 = L0_0[12]
                        if L0_0 == 255 then
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
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
