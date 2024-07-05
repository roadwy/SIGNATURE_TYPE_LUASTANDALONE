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
elseif L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L2_2(mp.CONTEXT_DATA_FILEPATH)
  L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILEPATH))
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L2_2(mp.CONTEXT_DATA_FILENAME)
  if string.len(L2_2) == 15 and string.sub(L2_2, -4) == ".exe" and (string.sub(L1_1, -19) == "\\appdata\\local\\temp" or string.sub(L1_1, -20) == "\\local settings\\temp") then
    if string.match(L2_2, "%l%l%l%l%l%l%l%l%l%l%l") == nil and string.match(L2_2, "%u%u%u%u%u%u%u%u%u%u%u") == nil then
      return mp.CLEAN
    end
    if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "excel.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "winword.exe" then
      mp.set_mpattribute("Lua:AdnelProcessFilename.A")
    else
      mp.set_mpattribute("Lua:AdnelFilename.A")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
