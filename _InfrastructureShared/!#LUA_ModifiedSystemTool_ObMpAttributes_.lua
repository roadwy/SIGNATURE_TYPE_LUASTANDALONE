local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_FILEPATH)
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "narrator.exe" and (string.lower((string.sub(L1_1, -9))) == "\\system32" or string.lower((string.sub(L1_1, -9))) == "\\syswow64") then
    mp.set_mpattribute("BM_MODIFIED_SYSTEM_TOOL")
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
