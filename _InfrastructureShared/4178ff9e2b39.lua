local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "pea_isdll"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 < 153600 then
    L0_0 = pe
    L0_0 = L0_0.get_exports
    L1_1 = L0_0()
    if L1_1 == nil or L0_0 == 0 then
      return L2_2
    end
    for L5_5 = 1, L0_0 do
      L6_6 = pe
      L6_6 = L6_6.mmap_string_rva
      L6_6 = L6_6(L1_1[L5_5].namerva, 64)
      if L6_6 ~= nil and string.lower(L6_6) == "DllGetClassObject" then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
