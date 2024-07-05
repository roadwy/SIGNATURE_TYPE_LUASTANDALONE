local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = L0_0.len
  L1_1 = L1_1(L0_0)
  if L1_1 > 5 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0)
    if L0_0:len() > 8 and string.sub(L0_0, 1, 8) == "\\device\\" then
      L1_1 = string.lower(MpCommon.PathToWin32Path(L0_0))
    end
    if L1_1:len() == 6 then
      if L1_1 == "\\\\?\\c:" then
        return mp.INFECTED
      else
        mp.set_mpattribute("Lua:FileBaseFolderInOtherDrive")
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
