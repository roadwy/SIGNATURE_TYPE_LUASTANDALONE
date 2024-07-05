local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(nri.GetHttpRequestHeader("User-Agent"))
if string.find(L0_0, "medunja solodunnja", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
