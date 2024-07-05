local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = L0_0.command_line
    if L1_1 ~= nil then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(L0_0.command_line)
      if string.find(L1_1, "/create", 1, true) and string.find(L1_1, "/ru", 1, true) and string.find(L1_1, "authority\\system", 1, true) and string.find(L1_1, "/tn", 1, true) and string.find(L1_1, "/tr", 1, true) and string.find(L1_1, "regsvr32.exe", 1, true) and string.find(L1_1, "/sc", 1, true) and string.find(L1_1, "/st", 1, true) and string.find(L1_1, "/et", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
