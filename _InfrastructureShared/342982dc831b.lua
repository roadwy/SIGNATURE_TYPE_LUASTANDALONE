local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = ""
L1_1 = mp
L1_1 = L1_1.GetBruteMatchData
L1_1 = L1_1()
L2_2 = L1_1.match_offset
L2_2 = L2_2 + 1
L3_3 = L1_1.match_offset
L3_3 = L3_3 + 1
L3_3 = L3_3 + 200
L4_4 = L1_1.is_header
if L4_4 then
  L4_4 = tostring
  L4_4 = L4_4(headerpage)
  L4_4 = L4_4.sub
  L4_4 = L4_4(L4_4, L2_2, L3_3)
  L4_4 = L4_4.lower
  L4_4 = L4_4(L4_4)
  L0_0 = L4_4
else
  L4_4 = tostring
  L4_4 = L4_4(footerpage)
  L4_4 = L4_4.sub
  L4_4 = L4_4(L4_4, L2_2, L3_3)
  L4_4 = L4_4.lower
  L4_4 = L4_4(L4_4)
  L0_0 = L4_4
end
L4_4 = L0_0.find
L4_4 = L4_4(L0_0, "get/autodiscover/autodiscover.json?", 1, true)
if not L4_4 then
  L4_4 = L0_0.find
  L4_4 = L4_4(L0_0, "post/autodiscover/autodiscover.json?", 1, true)
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
end
function L4_4(A0_5)
  return (A0_5:gsub("%%(%x%x)", function(A0_6)
    return string.char(tonumber(A0_6, 16))
  end))
end
if string.lower(string.gsub(L4_4(L0_0), "%%", "")):find("/powershell?", 1, true) or string.lower(string.gsub(L4_4(L0_0), "%%", "")):find("/powershell/?", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
