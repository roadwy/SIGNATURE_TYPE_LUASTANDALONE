local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isvbpcode
if L0_0 ~= true then
  L0_0 = peattributes
  L0_0 = L0_0.isvbnative
  if L0_0 ~= true then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
