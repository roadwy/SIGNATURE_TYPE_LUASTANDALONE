local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p2
  end
end
L2_2 = contains
L2_2 = L2_2(L0_0, "%-[eE][ncodemaNCODEMA]*%s+", false)
if L2_2 then
  L2_2 = NormalizeCmdline
  L2_2 = L2_2("powershell", L0_0)
  L1_1 = L2_2
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {
  "get-netipconfiguration",
  "ipv4defaultgateway",
  "invoke-restmethod",
  "b64xorencode",
  "polltask"
}
if contains(L1_1, L2_2) then
  return mp.INFECTED
end
return mp.CLEAN
