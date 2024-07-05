local L0_0, L1_1, L2_2
L0_0 = {}
L0_0.TimeProvOpen = ""
L0_0.TimeProvClose = ""
L0_0.TimeProvCommand = ""
L1_1 = 0
L2_2 = pe
L2_2 = L2_2.get_exports
L2_2 = L2_2()
if L2_2 > 2 then
  for _FORV_7_ = 1, L2_2 do
    if L0_0[pe.mmap_string_rva(L2_2()[_FORV_7_].namerva, 64)] then
      L1_1 = L1_1 + 1
    end
  end
  if L1_1 == 3 then
    return mp.INFECTED
  end
end
return mp.CLEAN
