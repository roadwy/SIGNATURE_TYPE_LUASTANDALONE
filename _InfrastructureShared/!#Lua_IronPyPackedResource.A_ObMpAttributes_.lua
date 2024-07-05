local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:TopLevelFileExt.A!exe"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:TopLevelFileExt.A!dll"
  L0_0 = L0_0(L1_1)
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilename
  L1_1 = mp
  L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
  L0_0 = L0_0(L1_1)
  L1_1 = L0_0.match
  L1_1 = L1_1(L0_0, "->%[msilres:ipdll.(.-)%]")
  if L1_1 ~= nil and L1_1 ~= "" then
    mp.set_mpattribute("Lua:FePyCompiledResourcePresent")
    mp.set_mpattribute("Lua:FePyCompiledRes!" .. L1_1)
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
