local L0_0, L1_1
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 == 233 then
  L0_0 = epcode
  L0_0 = L0_0[2]
  if L0_0 == 155 then
    L0_0 = epcode
    L0_0 = L0_0[3]
    if L0_0 == 219 then
      L0_0 = epcode
      L0_0 = L0_0[4]
      if L0_0 == 255 then
        L0_0 = pehdr
        L0_0 = L0_0.TimeDateStamp
        if L0_0 == 0 then
          L0_0 = pehdr
          L0_0 = L0_0.PointerToSymbolTable
          if L0_0 > 1048576 then
            L0_0 = mp
            L0_0 = L0_0.INFECTED
            return L0_0
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
