local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetCertificateInfo
L0_0 = L0_0()
for _FORV_4_, _FORV_5_ in L1_1(L2_2) do
  if _FORV_5_.Signers ~= nil then
    return mp.CLEAN
  end
end
if L1_1 > 100000 then
  if L2_2 > 200 then
    for _FORV_8_ = 1, L2_2 do
      if nil ~= nil and L2_2()[_FORV_8_].rva == nil then
        return mp.INFECTED
      end
      if L2_2()[_FORV_8_].fn == 2750976013 or L2_2()[_FORV_8_].fn == 2955234196 then
      end
    end
  end
end
return L2_2
