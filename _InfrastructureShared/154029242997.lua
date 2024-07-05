local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
  L1_1 = pesecs
  L1_1 = L1_1[L0_0]
  L1_1 = L1_1.PointerToRawData
  L1_1 = L1_1 + pesecs[L0_0].SizeOfRawData
  mp.readprotection(false)
  if mp.readfile(L1_1, 16) == "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000" then
    if mp.getfilesize() >= 4194304 then
      mp.set_mpattribute("AutoItIgnoreMaxSizes")
    end
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
