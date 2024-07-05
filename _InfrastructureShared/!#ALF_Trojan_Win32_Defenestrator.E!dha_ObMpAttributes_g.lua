local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
if L0_0 ~= nil then
elseif L1_1 == 0 then
  return L1_1
end
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = L5_5.AuthenticodeContentType
  if L6_6 ~= "PE" then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = L5_5.Certificates
  if L6_6 ~= nil then
    for _FORV_10_, _FORV_11_ in ipairs(L6_6) do
      if _FORV_11_.Issuer ~= nil and _FORV_11_.Issuer.CommonName ~= nil and mp.utf16to8(_FORV_11_.Issuer.CommonName) == "officeupdate.com" then
        return mp.INFECTED
      end
    end
  end
end
return L1_1
