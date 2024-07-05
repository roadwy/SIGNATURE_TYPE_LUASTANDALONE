local L0_0, L1_1, L2_2, L3_3
L0_0 = IsLegacyOrgMachine
L0_0 = L0_0()
if not L0_0 then
  L0_0 = IsTechniqueObservedForPid
  L1_1 = "BM"
  L0_0 = L0_0(L1_1, L2_2)
  if not L0_0 then
    L0_0 = IsTacticObservedForPid
    L1_1 = "BM"
    L0_0 = L0_0(L1_1, L2_2)
    if not L0_0 then
      L0_0 = IsTacticObservedForPid
      L1_1 = "BM"
      L0_0 = L0_0(L1_1, L2_2)
    end
  end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in L2_2(L3_3) do
  if _FORV_6_.image_path ~= nil then
    if ({
      ["ccmexec.exe"] = true,
      ["gpscript.exe"] = true,
      ["mpcmdrun.exe"] = true,
      ["mssense.exe"] = true,
      ["senseir.exe"] = true
    })[string.lower(_FORV_6_.image_path:match("\\([^\\]+)$"))] then
      return mp.CLEAN
    end
  end
end
if L2_2 > 36000000000 then
  return L2_2
end
if L2_2 then
  return L2_2
end
return L2_2
