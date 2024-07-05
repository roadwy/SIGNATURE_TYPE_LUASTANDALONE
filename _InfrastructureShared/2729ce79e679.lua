local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
L2_2 = ""
if L0_0.is_header then
  L2_2 = tostring(headerpage):sub(L1_1 - 256, L1_1 + 1)
  L2_2 = string.gsub(L2_2, "(.)(.)", "%2")
else
  L2_2 = tostring(footerpage):sub(L1_1 - 256, L1_1 + 1)
  L2_2 = string.gsub(L2_2, "(.)(.)", "%2")
end
L2_2 = string.lower(L2_2)
if string.find(L2_2, ".connected -or $", 1, true) then
  return mp.INFECTED
end
return mp.LOWFI
