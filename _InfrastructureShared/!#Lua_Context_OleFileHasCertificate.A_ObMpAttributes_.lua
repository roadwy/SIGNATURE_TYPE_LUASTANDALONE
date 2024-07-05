local L0_0, L1_1
L0_0 = false
L1_1 = mp
L1_1 = L1_1.GetCertificateInfo
L1_1 = L1_1()
for _FORV_5_, _FORV_6_ in pairs(L1_1) do
  if _FORV_6_.Signers ~= nil then
    L0_0 = true
    break
  end
end
if L0_0 == true then
  mp.set_mpattribute("Lua:OleFileHasCertificate")
elseif L0_0 == false then
  mp.set_mpattribute("Lua:OleFileHasNoCertificate")
end
return mp.CLEAN
