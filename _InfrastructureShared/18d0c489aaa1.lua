local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
L1_1 = L1_1 + 14
if L1_1 < mp.HEADERPAGE_SZ then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.is_header
if L1_1 then
  L1_1 = headerpage
  L1_1 = L1_1[L0_0.match_offset + 13]
  if L1_1 > 32 then
    L1_1 = tostring
    L1_1 = L1_1(headerpage)
    if string.match(L1_1, "\253\028%Xm") ~= nil and string.match(L1_1, "\004\017%Xm") ~= nil and string.match(L1_1, "h\149%Xm") ~= nil then
      mp.set_mpattribute("SCPT:Englist.Size")
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
