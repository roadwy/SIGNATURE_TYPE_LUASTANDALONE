function is_signed()
  local L0_0
  L0_0 = mp
  L0_0 = L0_0.GetCertificateInfo
  L0_0 = L0_0()
  for _FORV_4_, _FORV_5_ in pairs(L0_0) do
    if _FORV_5_.Signers ~= nil then
      return true
    end
  end
  return false
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= "uTorrent.exe" and is_signed() == false then
  return mp.INFECTED
end
return mp.CLEAN
