local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.command_line
if string.find(L1_1, "--destdir", 1, true) and string.find(L1_1, "--providerdir", 1, true) and string.find(L1_1, "--loglevel ", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
