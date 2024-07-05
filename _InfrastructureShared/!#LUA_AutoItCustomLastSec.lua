local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.is_delphi
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.Name
if L0_0 == ".rsrc" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.Name
if L0_0 == ".reloc" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 4194304 then
  L1_1 = peattributes
  L1_1 = L1_1.epscn_writable
  if L1_1 then
    L1_1 = peattributes
    L1_1 = L1_1.lastscn_writable
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.get_mpattributesubstring
      L2_2 = "Win32/AutoIt"
      L1_1 = L1_1(L2_2)
      if not L1_1 then
        L1_1 = mp
        L1_1 = L1_1.get_mpattributesubstring
        L2_2 = "PESTATIC:cleanstub_autoitv"
        L1_1 = L1_1(L2_2)
      elseif L1_1 then
        L1_1 = pesecs
        L2_2 = pehdr
        L2_2 = L2_2.NumberOfSections
        L1_1 = L1_1[L2_2]
        L1_1 = L1_1.PointerToRawData
        L2_2 = mp
        L2_2 = L2_2.readprotection
        L2_2(false)
        L2_2 = mp
        L2_2 = L2_2.readfile
        L2_2 = L2_2(L1_1, 64)
        if mp.crc32(-1, L2_2, 1, 64) == 2322767049 then
          mp.set_mpattribute("AutoItIgnoreMaxSizes")
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
