local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.hasexports
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.get_exports
L0_0 = L0_0()
if L0_0 > 3 then
  return mp.CLEAN
end
for _FORV_6_ = 1, L0_0 do
end
if 0 + 1 + 1 < 2 then
  return mp.CLEAN
end
return mp.INFECTED
