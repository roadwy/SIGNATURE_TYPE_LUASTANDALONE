local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 == true then
  L0_0 = peattributes
  L0_0 = L0_0.hasexports
  if L0_0 == false then
    L0_0 = peattributes
    L0_0 = L0_0.ismsil
    if L0_0 == true then
      L0_0 = mp
      L0_0 = L0_0.INFECTED
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
