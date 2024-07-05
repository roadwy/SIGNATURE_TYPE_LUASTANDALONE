local L0_0
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 == true then
  L0_0 = peattributes
  L0_0 = L0_0.ismsil
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L0_0 = L0_0("pea_no_security")
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.getfilesize
      L0_0 = L0_0()
      if L0_0 > 7200 then
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
