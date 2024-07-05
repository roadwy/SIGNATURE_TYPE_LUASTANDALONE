local L0_0
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 40000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil or string.len(L0_0) < 1 then
  return mp.CLEAN
end
if string.find(string.lower(L0_0), "\\program files", 1, true) or string.find(string.lower(L0_0), "\\mpsigstub.exe", 1, true) or string.find(string.lower(L0_0), "\\mpcmdrun.exe", 1, true) then
  return mp.CLEAN
end
if not this_sigattrlog[4].matched then
  return mp.CLEAN
end
if string.match(L0_0, "([^\\]-[^\\%.]+)$") == string.lower(this_sigattrlog[4].utf8p1) then
  return mp.INFECTED
end
return mp.CLEAN
