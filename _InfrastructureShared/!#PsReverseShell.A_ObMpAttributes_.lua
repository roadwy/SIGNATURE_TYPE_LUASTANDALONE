local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = {}
  if MpCommon.GetPersistContextCountNoPath("psfrag") >= 2 then
    mp.set_mpattribute("PS_Revershell")
  elseif MpCommon.GetPersistContextCountNoPath("psfrag") > 0 and not MpCommon.QueryPersistContextNoPath("psfrag", "p1") then
    MpCommon.AppendPersistContextNoPath("psfrag", "p1", 120)
  elseif not MpCommon.QueryPersistContextNoPath("psfrag", "p1") then
    table.insert(L1_1, "p1")
    MpCommon.SetPersistContextNoPath("psfrag", L1_1, 120)
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
