local L0_0
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
end
if StringEndsWith(L0_0, ".exe") and not contains(L0_0, {
  "installer",
  "program files",
  "certutil",
  "crossagentsetup",
  "zscaler-cert",
  "nahimicrestoretool",
  "ccmcache"
}) then
  return mp.INFECTED
end
return mp.CLEAN
