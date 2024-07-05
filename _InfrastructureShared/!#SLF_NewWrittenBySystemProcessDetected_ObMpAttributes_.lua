local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("MpContentDetected")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattributesubstring
  L0_0 = L0_0("Detection:Trojan:Win")
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattributesubstring
    L0_0 = L0_0("Detection:HackTool:Win")
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattributesubstring
      L0_0 = L0_0("Detection:RemoteAccess:Win")
      if not L0_0 then
        L0_0 = mp
        L0_0 = L0_0.CLEAN
        return L0_0
      end
    end
  end
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
if not string.find(L0_0, "^c:\\windows\\%w+%.exe$") then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "NewWrittenBySystemProcessDetected") then
  MpCommon.AppendPersistContext(L0_0, "NewWrittenBySystemProcessDetected", 5)
end
return mp.INFECTED
