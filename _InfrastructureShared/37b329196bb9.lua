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
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0.command_line)
if string.find(L1_1, ">", 1, true) or string.find(L1_1, ".txt", 1, true) or string.find(L1_1, ".log", 1, true) or string.find(L1_1, "robocopy", 1, true) or string.find(L1_1, "xcopy", 1, true) or string.find(L1_1, "cmtrace", 1, true) or string.find(L1_1, " /c del ", 1, true) or string.find(L1_1, "\\program files", 1, true) or string.find(L1_1, "adcrcpy", 1, true) or string.find(L1_1, "smstsvc", 1, true) or string.find(L1_1, "install", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
