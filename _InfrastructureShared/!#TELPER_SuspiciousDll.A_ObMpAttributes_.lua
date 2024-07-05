local L0_0, L1_1, L2_2
L0_0 = pe
L0_0 = L0_0.get_exports
L1_1 = L0_0()
if L0_0 == 1 then
  L2_2 = pe
  L2_2 = L2_2.mmap_string_rva
  L2_2 = L2_2(L1_1[1].namerva, 64)
  if L2_2 == nil then
    return mp.CLEAN
  end
  if string.lower(L2_2) == "exec" then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
