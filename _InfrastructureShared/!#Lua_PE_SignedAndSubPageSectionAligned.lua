local L0_0, L1_1, L2_2
L0_0 = pehdr
L0_0 = L0_0.Machine
if L0_0 ~= 332 then
  L0_0 = pehdr
  L0_0 = L0_0.Machine
  if L0_0 ~= 34404 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = pehdr
L0_0 = L0_0.SectionAlignment
if L0_0 >= 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L1_1 = pe
L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_SECURITY
L0_0 = L0_0[L1_1]
L0_0 = L0_0.RVA
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L2_2 = pe
L2_2 = L2_2.IMAGE_DIRECTORY_ENTRY_SECURITY
L1_1 = L1_1[L2_2]
L1_1 = L1_1.Size
if L0_0 == 0 or L1_1 == 0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pehdr
L2_2 = L2_2.AddressOfEntryPoint
if L0_0 < pe.foffset_rva(L2_2) and pe.foffset_rva(L2_2) < L0_0 + L1_1 then
  mp.set_mpattribute("Lua:PE:SignedAndSubPageSectionAligned_EPInCert")
end
return mp.INFECTED
