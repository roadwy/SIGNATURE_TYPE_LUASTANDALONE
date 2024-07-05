local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "RPF:OleFileHasOverlay"
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 <= 80 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = false
L2_2 = mp
L2_2 = L2_2.GetCertificateInfo
L2_2 = L2_2()
for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
  if _FORV_7_.Signers ~= nil then
    L1_1 = true
    break
  end
end
if L1_1 == false then
  L3_3(L4_4)
  return L3_3
end
if L3_3 == nil or L0_0 >= L3_3 then
  return L4_4
end
if L4_4 <= 5120000 then
  mp.vfo_add_filechunk(L0_0, L4_4, "[OleFileOverlay]", 1)
  return mp.INFECTED
else
  mp.set_mpattribute("Lua:OleFileOverlayOverSizeLimit.A")
end
return mp.CLEAN
