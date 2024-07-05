local L0_0
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if not L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
  if pesecs[L0_0].SizeOfRawData > 3670016 then
    mp.set_mpattribute("AutoItIgnoreMaxSizes")
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
