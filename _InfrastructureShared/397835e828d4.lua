local L0_0
L0_0 = pesecs
L0_0 = L0_0[4]
L0_0 = L0_0.Name
if L0_0 == ".imports" then
  L0_0 = pesecs
  L0_0 = L0_0[3]
  L0_0 = L0_0.Name
  if L0_0 == "UPX2" then
    L0_0 = mp
    L0_0 = L0_0.getfilesize
    L0_0 = L0_0()
    if L0_0 > 60000 then
      L0_0 = mp
      L0_0 = L0_0.getfilesize
      L0_0 = L0_0()
      if L0_0 < 70000 then
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
