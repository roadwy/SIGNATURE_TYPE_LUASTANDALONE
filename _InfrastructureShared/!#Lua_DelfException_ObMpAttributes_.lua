local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isexe
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 10 then
  L0_0 = pesecs
  L0_0 = L0_0[2]
  L0_0 = L0_0.Name
  if L0_0 == ".itext" then
    L0_0 = pevars
    L0_0 = L0_0.epsec
    if L0_0 == 2 then
      L0_0 = mp
      L0_0 = L0_0.INFECTED
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
