local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = GetCtxOfficeProc
L0_0 = L0_0()
if L0_0 ~= "productivity2" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_FILEPATH)
L0_0 = L0_0(L1_1, L1_1(mp.CONTEXT_DATA_FILEPATH))
if L0_0 == nil then
  L1_1 = ""
else
  L1_1 = L1_1 or L0_0
end
L1_1 = L1_1.lower
L1_1 = L1_1(L1_1)
L0_0 = L1_1
L1_1 = MpCommon
L1_1 = L1_1.ExpandEnvironmentVariables
L1_1 = L1_1("%windir%")
L1_1 = (L1_1 == nil and "" or L1_1):lower()
if L0_0 ~= L1_1 then
  return mp.CLEAN
end
return mp.INFECTED
