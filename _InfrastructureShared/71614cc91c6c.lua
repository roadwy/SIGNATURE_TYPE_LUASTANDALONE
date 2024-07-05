local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 >= 6402040 and L0_0 <= 6591488 then
    L1_1 = pehdr
    L1_1 = L1_1.SizeOfImage
    if L1_1 ~= 622592 then
      L1_1 = pehdr
      L1_1 = L1_1.SizeOfImage
      if L1_1 ~= 696320 then
        L1_1 = pehdr
        L1_1 = L1_1.SizeOfImage
      end
    end
  else
    if L1_1 ~= 692224 then
      if L0_0 >= 57671680 then
        L1_1 = pehdr
        L1_1 = L1_1.SizeOfImage
      elseif L1_1 ~= 622592 then
        if L0_0 >= 14188544 and L0_0 <= 14254080 then
          L1_1 = pehdr
          L1_1 = L1_1.SizeOfImage
        end
      end
  end
  elseif L1_1 == 921600 then
    L1_1 = pehdr
    L1_1 = L1_1.NumberOfSections
    L2_2 = pesecs
    L2_2 = L2_2[L1_1]
    L2_2 = L2_2.PointerToRawData
    L2_2 = L2_2 + pesecs[L1_1].SizeOfRawData
    mp.readprotection(false)
    if mp.readfile(L2_2, 16) == "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000" then
      mp.set_mpattribute("AutoItIgnoreMaxSizes")
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
