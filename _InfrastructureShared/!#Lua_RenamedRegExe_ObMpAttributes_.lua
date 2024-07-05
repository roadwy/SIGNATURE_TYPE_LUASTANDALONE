local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.getfilename
    L1_1 = mp
    L1_1 = L1_1.bitor
    L1_1 = L1_1(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)
    L0_0 = L0_0(L1_1, L1_1(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    if L0_0 == "reg.exe" then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
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
    if not MpCommon.QueryPersistContext(L1_1, "RenamedRegExe") then
      MpCommon.AppendPersistContext(L1_1, "RenamedRegExe", 0)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
