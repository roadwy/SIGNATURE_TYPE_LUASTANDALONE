local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  L1_1 = pehdr
  L1_1 = L1_1.NumberOfSections
  L2_2 = pesecs
  L2_2 = L2_2[L1_1]
  L2_2 = L2_2.PointerToRawData
  L2_2 = L2_2 + pesecs[L1_1].SizeOfRawData
  if L0_0 > L2_2 + 4 then
    mp.readprotection(false)
    if mp.readfile(L2_2, 4) == "SO!#" then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
