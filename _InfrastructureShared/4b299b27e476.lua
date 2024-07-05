local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = ""
if L0_0.is_header then
  L1_1 = string.lower(tostring(headerpage))
else
  L1_1 = string.lower(tostring(footerpage))
end
if L1_1:gsub("&chr%(.-%)&chr%(.-%)&chr%(.-%)&chr%(.-%)&chr%(", "") > 20 then
  return mp.INFECTED
end
return mp.CLEAN
