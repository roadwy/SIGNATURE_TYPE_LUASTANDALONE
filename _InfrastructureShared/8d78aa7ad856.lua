local L0_0
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if L0_0 then
  L0_0 = pesecs
  L0_0 = L0_0[pehdr.NumberOfSections]
  L0_0 = L0_0.PointerToRawData
  L0_0 = L0_0 + pesecs[pehdr.NumberOfSections].SizeOfRawData
  if mp.getfilesize() - L0_0 > 65536 then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
