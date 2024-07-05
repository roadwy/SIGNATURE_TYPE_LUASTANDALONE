local L0_0, L1_1
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 == 104 then
  L0_0 = epcode
  L0_0 = L0_0[6]
  if L0_0 == 195 then
    L0_0 = epcode
    L0_0 = L0_0[7]
    if L0_0 == 144 then
      L0_0 = mp
      L0_0 = L0_0.INFECTED
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
