local L0_0
if this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
  if string.find(L0_0, "kaspersky", 1, true) or string.find(L0_0, "little snitch", 1, true) or string.find(L0_0, "norton", 1, true) or string.find(L0_0, "avast", 1, true) or string.find(L0_0, "mcafee", 1, true) or string.find(L0_0, "avira", 1, true) or string.find(L0_0, "sophos", 1, true) or string.find(L0_0, "malwarebytes", 1, true) or string.find(L0_0, "trendmicro", 1, true) or string.find(L0_0, "bitdefender", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
