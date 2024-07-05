local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.x86_image
if L0_0 == true then
  L0_0 = peattributes
  L0_0 = L0_0.line_numbers_stripped
  if L0_0 == true then
    L0_0 = peattributes
    L0_0 = L0_0.locals_symbols_stripped
    if L0_0 == true then
      L0_0 = peattributes
      L0_0 = L0_0.no_security
      if L0_0 == true then
        L0_0 = peattributes
        L0_0 = L0_0.headerchecksum0
        if L0_0 == true then
          L0_0 = peattributes
          L0_0 = L0_0.hasappendeddata
          if L0_0 == true then
            L0_0 = peattributes
            L0_0 = L0_0.isexe
            if L0_0 == true then
              L0_0 = peattributes
              L0_0 = L0_0.no_debug
              if L0_0 == true then
                L0_0 = peattributes
                L0_0 = L0_0.no_relocs
                if L0_0 == true then
                  L0_0 = peattributes
                  L0_0 = L0_0.no_comruntime
                  if L0_0 == true then
                    L0_0 = peattributes
                    L0_0 = L0_0.no_boundimport
                    if L0_0 == true then
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
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
