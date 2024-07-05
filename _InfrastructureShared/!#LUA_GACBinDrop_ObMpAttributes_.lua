local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if L0_0 ~= "" then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\windows\\microsoft.net\\assembly\\gac_msil\\", 1, true)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.GetCertificateInfo
    L1_1 = L1_1()
    for _FORV_5_, _FORV_6_ in pairs(L1_1) do
      if _FORV_6_.Signers == nil then
        mp.set_mpattribute("Lua:GACUnsignedBinDrop")
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
