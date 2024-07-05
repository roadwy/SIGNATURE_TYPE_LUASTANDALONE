local L0_0
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 == 4 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L0_0 = L0_0("ATTRIBUTE:SIGA:MISL:PossibleKillProcess:S1")
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.GetCertificateInfo
    L0_0 = L0_0(false)
    for _FORV_4_, _FORV_5_ in pairs(L0_0) do
      if _FORV_5_.Signers ~= nil then
        return mp.CLEAN
      end
    end
    if pe.get_versioninfo() == nil then
      return mp.CLEAN
    end
    for _FORV_6_ = 1, #{
      "KMSELDI.exe"
    } do
      if pe.get_versioninfo().OriginalFilename == ({
        "KMSELDI.exe"
      })[_FORV_6_] then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
