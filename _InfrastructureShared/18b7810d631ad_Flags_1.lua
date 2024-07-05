local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0(L1_1)
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  if L1_1 > 0 then
    for L4_4, L5_5 in L1_1(L2_2) do
      L6_6 = L5_5.AuthenticodeContentType
      if L6_6 == "PE" then
        L6_6 = L5_5.Certificates
        if L6_6 ~= nil then
          for _FORV_10_, _FORV_11_ in ipairs(L6_6) do
            if _FORV_11_.Subject ~= nil and _FORV_11_.Subject.Organization ~= nil and mp.utf16to8(_FORV_11_.Subject.Organization) == "Google Inc" then
              return mp.CLEAN
            end
          end
        end
      end
    end
  end
end
if L1_1 >= 4 then
  return L1_1
end
return L1_1
