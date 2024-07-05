local L0_0, L1_1
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
elseif L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  if (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "themesmon.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "sensmon.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "networkmon.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "dnscsh.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "schdiphlp.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "srchdev.exe") and (string.sub(L1_1, -9) == "\\system32" or string.sub(L1_1, -9) == "\\syswow64") then
    mp.set_mpattribute("Lua:SefnitFileName.C")
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
