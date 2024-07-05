local L0_0, L1_1
L0_0 = headerpage
L0_0 = L0_0[1]
if L0_0 == 123 then
  L0_0 = headerpage
  L0_0 = L0_0[2]
  if L0_0 == 92 then
    L0_0 = headerpage
    L0_0 = L0_0[3]
    if L0_0 == 114 then
      L0_0 = headerpage
      L0_0 = L0_0[4]
    end
  end
elseif L0_0 ~= 116 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
