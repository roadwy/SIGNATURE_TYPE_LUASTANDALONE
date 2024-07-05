local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = L0_0.len
  L1_1 = L1_1(L0_0)
  if L1_1 > 28 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0)
    if string.sub(L1_1, -28) == "\\start menu\\programs\\startup" then
      if mp.get_mpattribute("BM_LNK_FILE") then
        mp.set_mpattribute("Lua:LnkFileInStartupFolder")
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
