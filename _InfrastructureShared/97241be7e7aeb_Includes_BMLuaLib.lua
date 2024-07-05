local L0_0
L0_0 = reportHeaders
L0_0({"Host", "User-Agent"})
L0_0 = nri
L0_0 = L0_0.GetRawResponseBlob
L0_0 = L0_0()
if string.byte(L0_0, 1) == 252 and (string.byte(L0_0, 2) == 232 or string.byte(L0_0, 2) == 72) then
  return mp.INFECTED
end
return mp.CLEAN
