local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
function L0_0(A0_7)
  local L1_8, L2_9, L3_10
  L1_8 = 214013 * A0_7
  L1_8 = L1_8 + 2531011
  L2_9 = mp
  L2_9 = L2_9.bitand
  L3_10 = mp
  L3_10 = L3_10.shr32
  L3_10 = L3_10(L1_8, 16)
  L2_9 = L2_9(L3_10, 32767)
  L3_10 = L2_9
  return L3_10, L1_8
end
random = L0_0
function L0_0(A0_11)
  local L1_12, L2_13, L3_14, L4_15, L5_16, L6_17, L7_18, L8_19, L9_20
  L9_20 = A0_11
  L1_12, L9_20 = random(L9_20)
  L2_13, L9_20 = random(L9_20)
  L3_14, L9_20 = random(L9_20)
  L4_15, L9_20 = random(L9_20)
  L4_15 = mp.bitor(mp.bitand(L4_15, 4095), 16384)
  L5_16, L9_20 = random(L9_20)
  L5_16 = L5_16 % 16383 + 32768
  L6_17, L9_20 = random(L9_20)
  L7_18, L9_20 = random(L9_20)
  L8_19, L9_20 = random(L9_20)
  return string.format("{%0.4X%0.4X-%0.4X-%0.4X-%0.4X-%0.4X%0.4X%0.4X}", L1_12, L2_13, L3_14, L4_15, L5_16, L6_17, L7_18, L8_19)
end
guid = L0_0
L0_0 = mp
L0_0 = L0_0.ContextualExpandEnvironmentVariables
L1_1 = "%temp%"
L0_0 = L0_0(L1_1)
L1_1 = sysio
L1_1 = L1_1.GetFileFsVolumeInformation
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = L1_1.VolumeSerialNumber
L3_3 = guid
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.wp1
L5_5 = this_sigattrlog
L5_5 = L5_5[3]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[3]
  L4_4 = L5_5.wp1
end
L5_5 = mp
L5_5 = L5_5.utf16to8
L6_6 = L4_4
L5_5 = L5_5(L6_6)
L4_4 = L5_5
L5_5 = string
L5_5 = L5_5.find
L6_6 = string
L6_6 = L6_6.lower
L6_6 = L6_6(L4_4)
L5_5 = L5_5(L6_6, string.lower(L3_3), 1, true)
if L5_5 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = this_sigattrlog
L5_5 = L5_5[1]
L5_5 = L5_5.utf8p1
L6_6 = string
L6_6 = L6_6.lower
L6_6 = L6_6(this_sigattrlog[1].utf8p2)
if #mp.GetExecutablesFromCommandLine(L6_6) == 1 then
  mp.ReportLowfi(L5_5, 1553292636)
  return mp.INFECTED
end
for _FORV_11_ = 2, #mp.GetExecutablesFromCommandLine(L6_6) do
  if sysio.IsFileExists(mp.GetExecutablesFromCommandLine(L6_6)[_FORV_11_]) then
    if string.match(mp.GetExecutablesFromCommandLine(L6_6)[_FORV_11_], "\\(Application Data|ProgramData)\\[0-9a-z]+\\[.0-9a-z]+$") ~= nil then
      mp.ReportLowfi(mp.GetExecutablesFromCommandLine(L6_6)[_FORV_11_], 954960809)
    else
      mp.ReportLowfi(mp.GetExecutablesFromCommandLine(L6_6)[_FORV_11_], 3621865083)
    end
  end
end
return _FOR_.INFECTED
