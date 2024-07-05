local L0_0
L0_0 = nri
L0_0 = L0_0.IsResponse
L0_0 = L0_0()
if L0_0 then
  L0_0 = nri
  L0_0 = L0_0.GetRawResponseBlob
  L0_0 = L0_0()
  if L0_0 and string.find(L0_0, "Server: Microsoft%-IIS/7.5") then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
