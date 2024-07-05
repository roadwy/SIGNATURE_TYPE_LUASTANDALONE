local L0_0, L1_1
L0_0 = string
function L1_1(A0_2)
  return (A0_2:gsub(".", function(A0_3)
    local L2_4
    L2_4 = string
    L2_4 = L2_4.format
    return L2_4("%02X", string.byte(A0_3))
  end))
end
L0_0.tohex = L1_1
L0_0 = nri
L0_0 = L0_0.GetRawResponseBlob
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L1_1 = L1_1(L0_0)
  if L1_1 < 4096 then
    L1_1 = {}
    L1_1.NRI_ResponseBlob = L0_0:tohex()
    nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L1_1)
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
