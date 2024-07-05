local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.query_import
if 0 == L1_1(pe.IMPORT_STATIC, 1962618287) then
  return mp.CLEAN
end
if 0 == L1_1(pe.IMPORT_STATIC, 2775632208) then
  return mp.CLEAN
end
return mp.INFECTED
