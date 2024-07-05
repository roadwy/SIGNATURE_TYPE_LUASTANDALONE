local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = peattributes
L0_0 = L0_0.no_exports
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L1_1 = "Lua:Win32/ExeFileWithExport.A"
  L0_0(L1_1)
end
L0_0 = pe
L0_0 = L0_0.get_exports
L1_1 = L0_0()
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L0_0 > 4 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "Lua:Win32/FileExports.A!"
for L6_6 = 1, L0_0 do
  L7_7 = pe
  L7_7 = L7_7.mmap_string_rva
  L7_7 = L7_7(L1_1[L6_6].namerva, 64)
  if L7_7 ~= nil then
    L7_7 = string.lower(L7_7)
    mp.set_mpattribute(L2_2 .. L7_7)
  end
end
return L3_3
