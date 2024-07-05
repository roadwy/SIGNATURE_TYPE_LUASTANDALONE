local L0_0, L1_1
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 == 131 then
  L0_0 = epcode
  L0_0 = L0_0[2]
  if L0_0 == 236 then
    L0_0 = epcode
    L0_0 = L0_0[30]
    if L0_0 == 185 then
      L0_0 = epcode
      L0_0 = L0_0[35]
      if L0_0 == 128 then
        L0_0 = epcode
        L0_0 = L0_0[36]
        if L0_0 == 48 then
          L0_0 = mp
          L0_0 = L0_0.INFECTED
          return L0_0
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
