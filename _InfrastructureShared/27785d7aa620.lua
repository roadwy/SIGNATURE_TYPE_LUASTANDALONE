local L0_0
L0_0 = pesecs
L0_0 = L0_0[6]
L0_0 = L0_0.Name
if L0_0 == ".Sharper" then
  L0_0 = pesecs
  L0_0 = L0_0[7]
  L0_0 = L0_0.Name
  if L0_0 == ".Sharper" then
    L0_0 = pesecs
    L0_0 = L0_0[8]
    L0_0 = L0_0.Name
    if L0_0 == ".Sharper" then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L0_0 = L0_0("pea_no_security")
      if L0_0 then
        L0_0 = mp
        L0_0 = L0_0.GetCertificateInfo
        L0_0 = L0_0()
        for _FORV_4_, _FORV_5_ in pairs(L0_0) do
          if _FORV_5_.Signers ~= nil then
            return mp.CLEAN
          end
        end
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
