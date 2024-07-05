local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = ""
L2_2 = L0_0.is_header
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = tostring
  L4_4 = headerpage
  L4_4 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L3_3(L4_4))
  L1_1 = L2_2
else
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = tostring
  L4_4 = footerpage
  L4_4 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L3_3(L4_4))
  L1_1 = L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "assemblypath%s+%$(%w+)"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= nil then
  L3_3 = L2_2
  L4_4 = "%s*=%s*(.-%.dll['\\\"]?)"
  L3_3 = L3_3 .. L4_4
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L1_1, L3_3)
  if L4_4 then
    TrackPidAndTechnique("RTP", "T1071.003", "tactic=registers_susptransportdll;filepath:" .. L4_4)
    AppendToRollingQueue("XchgTransportAssembly", L4_4, nil, 3600)
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
