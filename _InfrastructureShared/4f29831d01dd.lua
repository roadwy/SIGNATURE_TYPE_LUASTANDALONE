local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = ""
if L0_0.is_header then
  L1_1 = tostring(headerpage)
else
  L1_1 = tostring(footerpage)
end
if string.find(L1_1, "%${[0-1][0-1][0-1][0-1]+}") then
  return mp.INFECTED
elseif string.find(L1_1, "%${[_/\\=][_/\\=][_/\\=][_/\\=]+}") then
  return mp.INFECTED
elseif string.find(L1_1, "%${%w%w%w%w%w%w%w%w+}") then
  return mp.INFECTED
elseif string.find(L1_1, "%${[1-9][1-9]+}") then
  return mp.INFECTED
end
return mp.CLEAN
