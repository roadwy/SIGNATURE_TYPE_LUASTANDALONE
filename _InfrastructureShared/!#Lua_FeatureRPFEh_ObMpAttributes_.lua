local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_HAS_MOTW_ADS
L1_1 = L1_1(L2_2)
if L1_1 ~= true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetMOTWZone
L1_1 = L1_1()
if not L1_1 or L1_1 < 3 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetCertificateInfo
L2_2 = L2_2()
if not L2_2 or next(L2_2) then
  return mp.CLEAN
end
mp.set_mpattribute("MpInternal_FeatureRPFMsvcEh")
mp.set_mpattributeex("RPF:MSVC:FunctionSizeThreshold", 16384)
mp.set_mpattributeex("RPF:MSVC:FunctionStackThreshold", 1024)
mp.set_mpattribute("MpInternal_FeatureRPFDwarfEh")
mp.set_mpattributeex("RPF:DWARF:FunctionSizeThreshold", 16384)
return mp.CLEAN
