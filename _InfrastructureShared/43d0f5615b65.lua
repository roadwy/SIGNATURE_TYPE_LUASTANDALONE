local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESS_PPID
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetProcessCommandLine
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.match
  L2_2 = L2_2(L1_1, "[Ww][Ii][Nn][Ww][Oo][Rr][Dd]%.[Ee][Xx][Ee]\".+\"(.+%.[Dd][Oo][Cc][MmXx]?\"-)")
  if L2_2 ~= nil and string.len(L2_2) > 3 and sysio.IsFileExists(L2_2) then
    mp.ReportLowfi(L2_2, 1344846517)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
