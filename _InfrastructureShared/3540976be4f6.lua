local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(pe.get_versioninfo().OriginalFilename)
if L0_0 == "ultraviewer_service.exe" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.is_process
if L0_0 then
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
return mp.INFECTED
