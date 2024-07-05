local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.ppid
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(mp.GetProcessCommandLine(L1_1))
if string.find(L2_2, "8223363f%-34f3%-4cff%-b4f2%-6d0d4b9a4dbc") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
