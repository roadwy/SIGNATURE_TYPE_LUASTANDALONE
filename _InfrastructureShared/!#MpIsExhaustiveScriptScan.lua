local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L0_0 = L0_0(L1_1, 1)
if L0_0 ~= 1953651835 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 204800 or L0_0 > 2097152 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L1_1 = L1_1(headerpage)
if string.find(L1_1, "generator Riched20 6.3.9600", 1, true) ~= nil and string.find(L1_1, "ansi\\ansicpg1252\\deff0\\nouicompat\\deflang1033\\deflangfe2052", 1, true) ~= nil and (string.find(L1_1, "WOW SUCH FAKE MUCH", 1, true) ~= nil or string.find(L1_1, "Please Wait While", 1, true) ~= nil) then
  return mp.INFECTED
end
if string.find(L1_1, "panose 02020603050405020304}Times New Roman;}", 1, true) ~= nil and string.find(L1_1, "rtf1\\adeflang1025\\ansi\\ansicpg125", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
