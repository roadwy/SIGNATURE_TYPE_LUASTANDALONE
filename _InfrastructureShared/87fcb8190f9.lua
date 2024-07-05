local L0_0, L1_1
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 == 85 then
  L0_0 = epcode
  L0_0 = L0_0[2]
  if L0_0 == 144 then
    L0_0 = epcode
    L0_0 = L0_0[3]
    if L0_0 == 84 then
      L0_0 = epcode
      L0_0 = L0_0[4]
      if L0_0 == 93 then
        L0_0 = mp
        L0_0 = L0_0.INFECTED
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
