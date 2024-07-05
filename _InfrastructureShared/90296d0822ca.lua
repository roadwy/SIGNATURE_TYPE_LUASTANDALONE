local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = tostring
L1_1 = L1_1(headerpage)
L0_0 = L0_0(L1_1, L1_1(headerpage))
L1_1 = string
L1_1 = L1_1.match
L1_1 = L1_1(L0_0, "<param name=\"movie\" value=\"/(.-)\">")
if L1_1 and string.match(L0_0, "<embed name=\"%l-\" width=\"115\" height=\"110\" align=\"middle\" pluginspage=\".-\" src=\"/(.-)\" type=\"") and string.match(L0_0, "<embed name=\"%l-\" width=\"115\" height=\"110\" align=\"middle\" pluginspage=\".-\" src=\"/(.-)\" type=\"") == L1_1 and string.find(L1_1, "^%l-%.%l-%?%w%w%w%w-=") then
  for _FORV_7_ in string.gmatch(L1_1, "=%w%w%w%w-&") do
  end
  if 0 + 1 >= 2 then
    return mp.INFECTED
  end
end
return mp.CLEAN
