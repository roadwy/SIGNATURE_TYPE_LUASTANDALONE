local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 == true then
  L0_0 = pesecs
  L0_0 = L0_0[5]
  L0_0 = L0_0.Name
  if L0_0 == ".gr43" then
    L0_0 = pesecs
    L0_0 = L0_0[6]
    L0_0 = L0_0.Name
    if L0_0 == ".00cfg" then
      L0_0 = mp
      L0_0 = L0_0.INFECTED
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
