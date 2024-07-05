local L0_0, L1_1, L2_2
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 4 then
  L0_0 = peattributes
  L0_0 = L0_0.epinfirstsect
  if L0_0 ~= false then
    L0_0 = pesecs
    L0_0 = L0_0[2]
    L0_0 = L0_0.SizeOfRawData
    if L0_0 == 40960 then
      L0_0 = pesecs
      L0_0 = L0_0[2]
      L0_0 = L0_0.Name
      if L0_0 == ".data1" then
        L0_0 = hstrlog
        L0_0 = L0_0[1]
        L0_0 = L0_0.VA
        L1_1 = pehdr
        L1_1 = L1_1.ImageBase
        L2_2 = pehdr
        L2_2 = L2_2.AddressOfEntryPoint
        L1_1 = L1_1 + L2_2
      end
    end
  end
elseif L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
