local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.FILEPATH_QUERY_LOWERCASE)
if string.sub(L1_1, 0, 4) == "\\\\?\\" then
  L1_1 = string.sub(L1_1, 5)
end
if L1_1:sub(1, 8) == "\\device\\" then
  L1_1 = MpCommon.PathToWin32Path(L1_1)
  if L1_1 == nil then
    return mp.CLEAN
  end
  L1_1 = string.lower(L1_1)
end
if not string.find(L1_1, "^c:\\windows\\[^\\]+%.exe$") then
  return mp.CLEAN
end
if mp.IsHipsRuleEnabled("d1e49aac-8f56-4280-b9ba-993a6d77406c") ~= true then
  return mp.CLEAN
end
return mp.INFECTED
