local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.match(L0_0, "(%.[^%.]+)$") ~= ".vbs" then
  return mp.CLEAN
end
if string.match(L0_0, "\\appdata\\roaming\\2019....\\........%.vbs") == nil then
  return mp.CLEAN
end
return mp.INFECTED
