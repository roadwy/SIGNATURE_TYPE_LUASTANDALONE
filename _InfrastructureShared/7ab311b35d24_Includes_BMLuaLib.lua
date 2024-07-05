local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = isnull
L1_1 = L1_1(L0_0)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.command_line
if string.match(L1_1, "[^ ]+%s->%s-\\\\%.\\pipe\\[^ ]+$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
