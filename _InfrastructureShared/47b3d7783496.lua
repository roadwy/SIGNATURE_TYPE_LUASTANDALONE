local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
L0_0 = string.lower(L0_0)
if string.len(L0_0) < 100 then
  return mp.CLEAN
end
if string.find(L0_0, "%.ps1") then
  return mp.CLEAN
end
if not string.find(L0_0, "{%d%d?}{%d%d?}") then
  return mp.CLEAN
end
L0_0 = string.gsub(L0_0, " ", "")
for _FORV_5_ in string.gmatch(L0_0, "[\"']%-f[\"']") do
end
if 0 + 1 < 2 then
  return mp.CLEAN
end
for _FORV_6_ in string.gmatch(L0_0, "{%d%d?}{%d%d?}") do
end
if 0 + 1 < 2 then
  return mp.CLEAN
end
if 0 + 1 > 3 and 0 + 1 > 3 or 0 + 1 >= 2 and 0 + 1 >= 2 and string.find(L0_0, "`", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
