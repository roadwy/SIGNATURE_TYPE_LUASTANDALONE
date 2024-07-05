local L0_0, L1_1, L2_2
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
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isdamaged
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_contextdata
    L1_1 = mp
    L1_1 = L1_1.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
    L0_0 = L0_0(L1_1)
  end
elseif true ~= L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
L2_2 = L0_0.sub
L2_2 = L2_2(L0_0, 1, 8)
if L2_2 == "\\device\\" then
  L2_2 = MpCommon
  L2_2 = L2_2.PathToWin32Path
  L2_2 = L2_2(L0_0)
  L2_2 = L2_2.lower
  L2_2 = L2_2(L2_2)
  L0_0 = L2_2
end
L2_2 = {
  MpCommon.ExpandEnvironmentVariables("%ProgramFiles%") or "",
  MpCommon.ExpandEnvironmentVariables("%ProgramFiles(x86)%") or "",
  MpCommon.ExpandEnvironmentVariables("%windir%") or "",
  mp.ContextualExpandEnvironmentVariables("%APPDATA%") or "",
  mp.ContextualExpandEnvironmentVariables("%LOCALAPPDATA%") or ""
}
for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
  if "" ~= _FORV_7_ and L0_0:sub(1, #_FORV_7_):lower() == _FORV_7_:lower() then
    return mp.CLEAN
  end
end
if mp.IsTrustedFile(true) then
  return mp.CLEAN
end
return mp.INFECTED
