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
  L1_1 = L1_1(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if (string.sub(L1_1, -5) == "\\temp" or string.sub(L1_1, -9) == "\\temp\\low") and mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):len() < 13 and mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):find("^[0-9A-F][0-9A-F]?[0-9A-F]?[0-9A-F]?%.tmp%.exe$") == 1 then
      mp.set_mpattribute("Lua:ContextualDropTmpExe.A")
      mp.set_mpattribute("SLF:Lua:ContextualDropTmpExe.A!fdr")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
