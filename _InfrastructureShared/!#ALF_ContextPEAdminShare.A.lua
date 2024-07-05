local L0_0
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isdamaged
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L0_0 = L0_0(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.get_contextdata
    L0_0 = L0_0(mp.CONTEXT_DATA_FILEPATH)
    L0_0 = L0_0.lower
    L0_0 = L0_0(L0_0)
    if L0_0:sub(1, 8) == "\\device\\" then
      L0_0 = MpCommon.PathToWin32Path(L0_0):lower()
    end
    if L0_0 == "c:\\windows" and mp.get_contextdata(mp.CONTEXT_DATA_PROCESS_ID) < 12 and "" == mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME) then
      if mp.getfilesize() < 1048576 then
        mp.set_mpattribute("Lua:ContextPEAdminShare.A1")
      end
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
