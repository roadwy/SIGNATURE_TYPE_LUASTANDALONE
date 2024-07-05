local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = ""
L2_2 = L0_0.is_header
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(tostring(headerpage))
  L1_1 = L2_2
else
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(tostring(footerpage))
  L1_1 = L2_2
end
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L1_1, "assemblypath%s*(['\"]?%a:.+%.dll['\"]?)")
if L2_2 then
  TrackPidAndTechnique("RTP", "T1071.003", "tactic=registers_susptransportdll;filepath:" .. L2_2)
  AppendToRollingQueue("XchgTransportAssembly", L2_2, nil, 3600)
  return mp.INFECTED
end
return mp.CLEAN
