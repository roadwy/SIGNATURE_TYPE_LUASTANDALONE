local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 327680 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.FOOTERPAGE_SZ
if L1_1 < 1792 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(tostring(footerpage))
if L1_1 == nil then
  return mp.CLEAN
end
for _FORV_6_ in string.gmatch(L1_1, "function%(") do
  if 0 + 1 >= 20 then
    break
  end
end
if 0 + 1 < 20 then
  return mp.CLEAN
end
for _FORV_6_ in string.gmatch(L1_1, "{var ") do
  if 0 + 1 >= 10 then
    break
  end
end
if 0 + 1 < 10 then
  return mp.CLEAN
end
for _FORV_6_ in string.gmatch(L1_1, "return") do
  if 0 + 1 >= 20 then
    break
  end
end
if 0 + 1 < 20 then
  return mp.CLEAN
end
for _FORV_6_ in string.gmatch(L1_1, "_0x") do
  if 0 + 1 >= 250 then
    break
  end
end
if 0 + 1 < 250 then
  return mp.CLEAN
end
return mp.INFECTED
