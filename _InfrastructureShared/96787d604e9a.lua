local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.x86_image
if L0_0 == true then
  L0_0 = peattributes
  L0_0 = L0_0.hasexports
  if L0_0 == true then
    L0_0 = peattributes
    L0_0 = L0_0.epinfirstsect
    if L0_0 == true then
      L0_0 = peattributes
      L0_0 = L0_0.suspicious_linker_version
      if L0_0 == true then
        L0_0 = peattributes
        L0_0 = L0_0.no_security
        if L0_0 == true then
          L0_0 = peattributes
          L0_0 = L0_0.nx_bit_set
          if L0_0 == true then
            L0_0 = peattributes
            L0_0 = L0_0.headerchecksum0
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
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
