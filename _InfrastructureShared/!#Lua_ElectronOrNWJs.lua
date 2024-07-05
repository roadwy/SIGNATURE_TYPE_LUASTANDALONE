local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isdamaged
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isexe
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
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 < 4 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = -1
for L4_4 = 3, L2_2.NumberOfSections do
  L5_5 = string
  L5_5 = L5_5.lower
  L5_5 = L5_5(pesecs[L4_4].Name)
  if string.sub(L5_5, 1, 8) == "cpadinfo" then
    L0_0 = L4_4
    break
  end
end
if L0_0 == -1 then
  return L1_1
end
L1_1(L2_2)
L4_4 = 1
if L2_2 ~= 1129341284 then
  return L3_3
end
L4_4 = pehdr
L4_4 = L4_4.DataDirectory
L5_5 = pe
L5_5 = L5_5.IMAGE_DIRECTORY_ENTRY_EXPORT
L4_4 = L4_4[L5_5]
L4_4 = L4_4.RVA
L5_5 = 40
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = L3_3
L4_4 = L4_4(L5_5, 13)
L5_5 = pe
L5_5 = L5_5.mmap_rva
L5_5 = L5_5(L4_4, 32)
if string.sub(L5_5, 1, 12) == "electron.exe" then
  mp.set_mpattribute("Lua:ElectronExe.A")
elseif string.sub(L5_5, 1, 6) == "nw.exe" then
  mp.set_mpattribute("Lua:NWJsExe.A")
end
return mp.INFECTED
