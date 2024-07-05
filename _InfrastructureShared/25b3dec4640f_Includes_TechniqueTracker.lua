local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0.command_line)
    if StringStartsWith(L1_1, "%") then
      return mp.CLEAN
    end
    if L1_1:find("\\wbem\\wmiprvse.exe", 1, true) or L1_1:find("-embedding", 1, true) then
      return mp.CLEAN
    end
    TrackPidAndTechniqueBM(L0_0.ppid, "T1036", "masq_wmiprvse")
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
