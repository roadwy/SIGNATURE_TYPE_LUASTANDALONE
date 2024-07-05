local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasexports
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
L0_0.SUUAFindUser = ""
L0_0.SUUAGetAttribute = ""
L0_0.SUUASetAttribute = ""
L0_0.SUUAEnumDirAccess = ""
L1_1 = 0
L2_2 = pe
L2_2 = L2_2.get_exports
L2_2 = L2_2()
if L2_2 < 4 then
  return mp.CLEAN
end
for _FORV_7_ = 1, L2_2 do
  if L0_0[pe.mmap_string_rva(L2_2()[_FORV_7_].namerva, 64)] then
    L1_1 = L1_1 + 1
  end
end
if L1_1 == 4 then
  return mp.INFECTED
end
return mp.CLEAN
