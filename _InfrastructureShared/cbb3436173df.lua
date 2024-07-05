local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    L1_1 = string
    L1_1 = L1_1.sub
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, -1)
    if L1_1 == "\\" then
      L1_1 = string
      L1_1 = L1_1.sub
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, 0, #L0_0 - 1)
      L0_0 = L1_1
    end
    L1_1 = 43200
    L2_2 = string
    L2_2 = L2_2.sub
    L2_2 = L2_2(L0_0, -28)
    if L2_2 == "\\start menu\\programs\\startup" then
      L1_1 = 1
    end
    L2_2 = {}
    table.insert(L2_2, L0_0)
    MpCommon.SetPersistContextNoPath("BMLua:StartupFolderPathChange.EE", L2_2, L1_1)
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
