local L0_0
L0_0 = ""
if this_sigattrlog[2].matched then
  L0_0 = nri.GetURI()
end
if L0_0 ~= "" and string.find(L0_0, "&X-Rps-CAT=", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
