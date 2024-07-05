local L0_0, L1_1
L0_0 = false
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if L1_1 ~= nil and L1_1 ~= "" then
  L1_1 = MpCommon.PathToWin32Path(L1_1)
  if L1_1 ~= nil and L1_1 ~= "" and sysio.IsFileExists(L1_1) then
    L1_1 = string.lower(L1_1)
    L0_0 = true
  end
end
if L0_0 == false then
  L1_1 = mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  if L1_1 ~= nil and L1_1 ~= "" then
    L1_1 = MpCommon.PathToWin32Path(L1_1)
    if L1_1 ~= nil and L1_1 ~= "" and sysio.IsFileExists(L1_1) then
      L0_0 = true
    end
  end
end
if L0_0 then
  if string.find(L1_1, "^.:\\windows\\ccmcache\\") then
    return mp.CLEAN
  end
  if string.match(L1_1, "^.:\\(program files[^\\]*)\\tanium\\tanium client\\") == "program files" then
    return mp.CLEAN
  end
  if string.match(L1_1, "^.:\\(program files[^\\]*)\\tanium\\tanium client\\") == "program files (x86)" then
    return mp.CLEAN
  end
end
return mp.INFECTED
