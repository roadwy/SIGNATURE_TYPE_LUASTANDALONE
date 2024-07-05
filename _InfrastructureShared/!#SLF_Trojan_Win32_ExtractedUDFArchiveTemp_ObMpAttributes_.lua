local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) < 40 then
  return mp.CLEAN
end
if string.find(L0_0, ".iso", -4, true) == nil and string.find(L0_0, ".img", -4, true) == nil and string.find(L0_0, ".vhd", -4, true) == nil then
  return mp.CLEAN
end
if string.find(L0_0, "\\appdata\\local\\temp\\temp1_.*.zip\\[^\\]+$") ~= nil or string.find(L0_0, "\\appdata\\local\\temp.*\\rar%$[^\\]+\\[^\\]+$") ~= nil or string.find(L0_0, "\\appdata\\local\\temp\\%w+\\[^\\]+$") ~= nil or string.find(L0_0, "\\appdata\\local\\temp\\7z%w+\\[^\\]+$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
