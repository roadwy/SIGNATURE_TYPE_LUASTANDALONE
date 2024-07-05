local L0_0, L1_1
L0_0 = epcode
L0_0 = L0_0[6]
if L0_0 == 191 then
  L0_0 = epcode
  L0_0 = L0_0[11]
  if L0_0 == 185 then
    L0_0 = epcode
    L0_0 = L0_0[16]
    if L0_0 == 73 then
      L0_0 = epcode
      L0_0 = L0_0[17]
      if L0_0 == 128 then
        L0_0 = epcode
        L0_0 = L0_0[21]
        if L0_0 == 133 then
          L0_0 = epcode
          L0_0 = L0_0[23]
          if L0_0 == 117 then
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
