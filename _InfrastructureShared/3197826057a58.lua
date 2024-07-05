local L0_0
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.epinfirstsect
  if L0_0 then
    L0_0 = pehdr
    L0_0 = L0_0.NumberOfSections
    L0_0 = L0_0 > 7 and L0_0 > 4718592 and L0_0 < 6291456 and L0_0 > 2048 and L0_0 > 4096
  end
end
if L0_0 == false then
  mp.changedetectionname(268436426)
  return mp.INFECTED
end
return mp.INFECTED
