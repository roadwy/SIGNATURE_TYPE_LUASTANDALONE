local L0_0
L0_0 = peattributes
L0_0 = L0_0.ismsil
if L0_0 == true then
  L0_0 = peattributes
  L0_0 = L0_0.isdll
  if L0_0 == true then
    L0_0 = peattributes
    L0_0 = L0_0.hasexports
  end
elseif L0_0 ~= false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
if this_sigattrlog[8].matched and this_sigattrlog[8].p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[8].p1)
end
if contains(L0_0, "aspnet_regbrowsers") then
  return mp.CLEAN
end
L0_0 = str_reverse(L0_0:gsub("[-,.]", ""))
if contains(L0_0, "aspnet_regbrowsers") then
  return mp.INFECTED
end
return mp.CLEAN
