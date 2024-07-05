local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.no_exports
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.get_exports
L1_1 = L0_0()
if L0_0 == 1 then
  L2_2 = pe
  L2_2 = L2_2.mmap_string_rva
  L2_2 = L2_2(L1_1[1].namerva, 64)
  if L2_2 ~= nil and string.len(L2_2) >= 21 and string.find(string.lower(L2_2), "powershell_reflective", 1, true) ~= nil then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
