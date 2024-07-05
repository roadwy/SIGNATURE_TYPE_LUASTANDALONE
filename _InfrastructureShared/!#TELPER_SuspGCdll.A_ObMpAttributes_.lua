local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.get_exports
L2_2 = L1_1()
if L1_1 == 1 then
  L3_3 = pe
  L3_3 = L3_3.mmap_string_rva
  L4_4 = L2_2[1]
  L4_4 = L4_4.namerva
  L3_3 = L3_3(L4_4, 64)
  if L3_3 == "GC_VersionInfo" then
    L4_4 = pe
    L4_4 = L4_4.query_import
    if 0 == L4_4(pe.IMPORT_STATIC, 3306045273) then
      return mp.CLEAN
    end
    if 0 == L4_4(pe.IMPORT_STATIC, 2141573459) then
      return mp.CLEAN
    end
    if 0 == L4_4(pe.IMPORT_STATIC, 3604202544) then
      return mp.CLEAN
    end
    if 0 == L4_4(pe.IMPORT_STATIC, 1712054030) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
