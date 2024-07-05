local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L1_1(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
L1_1 = L0_0.find
L1_1 = L1_1(L0_0, "->word/_rels/", 1, true)
if not L1_1 then
  L1_1 = L0_0.find
  L1_1 = L1_1(L0_0, "/drawings/_rels/", 1, true)
  if not L1_1 then
    L1_1 = L0_0.find
    L1_1 = L1_1(L0_0, "/worksheets/_rels/", 1, true)
    if not L1_1 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L1_1 = mp
L1_1 = L1_1.HEADERPAGE_SZ
if L1_1 < 1024 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L1_1 = L1_1(headerpage)
L1_1 = L1_1.lower
L1_1 = L1_1(L1_1)
L1_1 = string.gsub(L1_1, "&#x(%x%x);", function(A0_2)
  return string.char(tonumber(A0_2, 16))
end)
L1_1 = string.gsub(L1_1, "&#(%d%d?%d?);", function(A0_3)
  return string.char(tonumber(A0_3, 10))
end)
mp.vfo_add_buffer(L1_1, "[docxmlu2a]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
