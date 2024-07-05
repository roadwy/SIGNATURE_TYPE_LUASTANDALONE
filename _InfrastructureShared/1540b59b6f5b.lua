local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
for _FORV_4_, _FORV_5_ in pairs(L0_0) do
  if _FORV_5_.Signers ~= nil then
    return mp.CLEAN
  end
end
if string.find(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH):lower(), "microsoft.net\\framework.-\\v[0-9.].+\\temporary asp.net files\\") or string.find(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH):lower(), "microsoft\\exchange server\\v[0-9].+\\clientaccess\\owa\\bin") or string.find(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH):lower(), "microsoft\\exchange server\\v[0-9].+\\frontend\\httpproxy\\owa\\bin") then
  return mp.INFECTED
end
return mp.CLEAN
