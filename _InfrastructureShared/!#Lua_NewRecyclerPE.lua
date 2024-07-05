local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L2_2 = L2_2(mp.CONTEXT_DATA_FILENAME)
    L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILENAME))
    L2_2 = string
    L2_2 = L2_2.sub
    L2_2 = L2_2(L1_1, -4)
    if L2_2 ~= ".exe" then
      L2_2 = string
      L2_2 = L2_2.sub
      L2_2 = L2_2(L1_1, -4)
      if L2_2 ~= ".scr" then
        L2_2 = mp
        L2_2 = L2_2.CLEAN
        return L2_2
      end
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if string.find(L2_2, "\\recycle", 1, true) == nil then
      return mp.CLEAN
    end
    if string.sub(L2_2, 1, 8) == "\\device\\" then
      L2_2 = MpCommon.PathToWin32Path(L2_2)
    end
    if string.sub(L2_2, 2, 12) == ":\\recycler\\" or string.sub(L2_2, 2, 11) == ":\\recycle\\" or string.sub(L2_2, 2, 12) == ":\\recycled\\" then
      mp.set_mpattribute("Lua:NewRecyclerPE")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
