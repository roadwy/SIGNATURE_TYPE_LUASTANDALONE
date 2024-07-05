local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.hasexports
if not L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.SizeOfImage
  if L0_0 == 2351104 then
    L0_0 = pehdr
    L0_0 = L0_0.SizeOfCode
    if L0_0 == 57344 then
      L0_0 = pehdr
      L0_0 = L0_0.AddressOfEntryPoint
      if L0_0 == 14780 then
        L0_0 = mp
        L0_0 = L0_0.INFECTED
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
