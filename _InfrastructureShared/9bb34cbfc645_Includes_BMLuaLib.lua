local L0_0, L1_1
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
end
L1_1 = string.match(L0_0, "msiexec%.?e?x?e?\"?'?%s+(.*)$")
if L1_1 == nil then
  return mp.CLEAN
end
if not contains(L1_1, {".msi", ".exe"}) then
  return mp.INFECTED
end
return mp.CLEAN
