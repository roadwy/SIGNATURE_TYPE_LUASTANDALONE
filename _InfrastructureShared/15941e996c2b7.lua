local L0_0, L1_1, L2_2
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
for _FORV_4_, _FORV_5_ in L1_1(L2_2) do
  if _FORV_5_.Signers ~= nil then
    return mp.CLEAN
  end
end
if L1_1 then
  if L1_1 then
    if string.match(L1_1:lower(), "^[a-z0-9]+$") and string.len(L1_1) < 20 and string.match(L2_2:lower(), "^[a-z0-9]+$") and string.len(L2_2) < 20 then
      return mp.INFECTED
    end
  end
end
return L1_1
