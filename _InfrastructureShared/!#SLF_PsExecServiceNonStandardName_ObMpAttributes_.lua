local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("Lua:PeOriginalName!psexesvc.exe")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if string.sub(L0_0, 0, 4) == "\\\\?\\" then
  L0_0 = string.sub(L0_0, 5)
end
if L0_0:sub(1, 8) == "\\device\\" then
  L0_0 = MpCommon.PathToWin32Path(L0_0)
  if L0_0 == nil then
    return mp.CLEAN
  end
  L0_0 = string.lower(L0_0)
end
if string.match(L0_0, "([^\\]+)$") == "psexesvc.exe" then
  if not MpCommon.QueryPersistContext(L0_0, "PsExecServiceStandardName") then
    MpCommon.AppendPersistContext(L0_0, "PsExecServiceStandardName", 5)
  end
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "PsExecServiceNonStandardName") then
  MpCommon.AppendPersistContext(L0_0, "PsExecServiceNonStandardName", 5)
end
return mp.INFECTED
