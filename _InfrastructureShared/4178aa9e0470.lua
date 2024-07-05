local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  if L0_0 == 4194905 then
    L1_1 = pehdr
    L1_1 = L1_1.AddressOfEntryPoint
    if L1_1 == 4112 then
      L1_1 = pehdr
      L1_1 = L1_1.DataDirectory
      L2_2 = pe
      L2_2 = L2_2.IMAGE_DIRECTORY_ENTRY_IMPORT
      L1_1 = L1_1[L2_2]
      L1_1 = L1_1.RVA
      if L1_1 == 4240 then
        L1_1 = mp
        L1_1 = L1_1.INFECTED
        return L1_1
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
