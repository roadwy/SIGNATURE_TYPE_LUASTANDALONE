local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L1_1 = mp
  L1_1 = L1_1.bitor
  L2_2 = mp
  L2_2 = L2_2.bitor
  L2_2 = L2_2(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
  L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
  L1_1 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
  if L0_0 ~= nil then
    L2_2 = L0_0.len
    L2_2 = L2_2(L0_0)
    if L2_2 > 10 and L1_1 ~= nil then
      L2_2 = L1_1.match
      L2_2 = L2_2(L1_1, "^([0-9a-f]+)")
      if L2_2 == nil or string.len(L2_2) < 32 or string.find(L2_2, "[0-9]", 1) == nil or string.find(L2_2, "[A-Fa-f]", 1) == nil then
        return mp.CLEAN
      end
      if L1_1:find(".", 1, true) then
        if L1_1:find(".svn-base", 1, true) then
          return mp.CLEAN
        end
        if L0_0:find("\\appdata\\", 1, true) or L0_0:find("\\programdata\\", 1, true) or L0_0:find(".runbookworker.cloud.sandboxes\\", 1, true) or L0_0:find("\\system recovery\\", 1, true) then
          return mp.CLEAN
        end
        mp.set_mpattribute("Lua:SuspiciousFileNamePeEx")
        mp.set_mpattribute("//Lua:SuspiciousFileNamePeExChild")
      else
        mp.set_mpattribute("Lua:SuspiciousFileNamePe")
        mp.set_mpattribute("//Lua:SuspiciousFileNamePeChild")
      end
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
