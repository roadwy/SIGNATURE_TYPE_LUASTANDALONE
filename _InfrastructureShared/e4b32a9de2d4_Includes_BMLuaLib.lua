local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  if L1_1 ~= nil then
    L1_1 = L0_0.command_line
    L2_2 = L1_1
    L1_1 = L1_1.find
    L1_1 = L1_1(L2_2, L3_3, L4_4, true)
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = bm
    L1_1 = L1_1.get_process_relationships
    L2_2 = L1_1()
    for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
      if _FORV_7_.image_path ~= nil then
        if ({
          ["pycharm.exe"] = true,
          ["devenv.exe"] = true,
          ["pycharm64.exe"] = true,
          ["microsoft.aether.exepool.exeworker.exe"] = true,
          ["code.exe"] = true,
          ["eclipse.exe"] = true
        })[string.lower(_FORV_7_.image_path:match("\\([^\\]+)$"))] then
          return mp.CLEAN
        end
      end
    end
    L3_3(L4_4, nil, nil, 1)
    return L3_3
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
