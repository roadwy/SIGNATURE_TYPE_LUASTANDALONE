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
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT)
if L1_1 ~= true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if not L1_1:find("\\downloads", 1, true) then
  return mp.CLEAN
end
if L1_1:find("\\users\\[^\\]+\\downloads") == nil then
  return mp.CLEAN
end
if string.sub(L1_1, -10) == "\\downloads" then
  return mp.INFECTED
end
if L1_1:find("\\downloads\\", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
