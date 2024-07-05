local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L5_5 = 2
L6_6 = this_sigattrlog
L6_6 = L6_6[7]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = this_sigattrlog
  L6_6 = L6_6[7]
  L6_6 = L6_6.p2
  if L6_6 then
    L6_6 = this_sigattrlog
    L6_6 = L6_6[7]
    L6_6 = L6_6.utf8p1
    L7_7 = L6_6
    L6_6 = L6_6.lower
    L6_6 = L6_6(L7_7)
    L0_0 = L6_6
    L6_6 = this_sigattrlog
    L6_6 = L6_6[7]
    L1_1 = L6_6.ppid
    L6_6 = this_sigattrlog
    L6_6 = L6_6[7]
    L2_2 = L6_6.image_path
    L3_3 = 1
  end
else
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
if L2_2 == nil or L1_1 == nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.match
L7_7 = L2_2
L8_8 = "\\([^\\]+)$"
L6_6 = L6_6(L7_7, L8_8)
L4_4 = L6_6
if L4_4 == nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = bm
L6_6 = L6_6.get_current_process_startup_info
L6_6 = L6_6()
L7_7 = L6_6.ppid
L8_8 = L6_6.command_line
if L6_6 == nil or L7_7 == nil or L8_8 == nil then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = L3_3
L10_10 = "|"
L11_11 = L1_1
L12_12 = "|"
L13_13 = L2_2
L9_9 = L9_9 .. L10_10 .. L11_11 .. L12_12 .. L13_13
L10_10 = "OfficeGen"
L11_11 = L7_7
L10_10 = L10_10 .. L11_11
L11_11 = 3600
L12_12 = 10
L13_13 = AppendToRollingQueue
L14_14 = L10_10
L15_15 = L0_0
L16_16 = L9_9
L13_13(L14_14, L15_15, L16_16, L11_11, L12_12, 0)
L13_13 = bm_AddRelatedFileFromCommandLine
L14_14 = L8_8
L13_13 = L13_13(L14_14)
L14_14 = GetRollingQueue
L15_15 = L10_10
L14_14 = L14_14(L15_15)
if L14_14 ~= nil then
  L15_15 = type
  L16_16 = L14_14
  L15_15 = L15_15(L16_16)
elseif L15_15 ~= "table" then
  L15_15 = mp
  L15_15 = L15_15.CLEAN
  return L15_15
end
L15_15 = {}
L15_15.doc = L13_13
L15_15.cmd = L8_8
L16_16 = {}
L15_15.detectionLog = L16_16
L16_16 = nil
L3_3 = 0
for _FORV_20_, _FORV_21_ in ipairs(L14_14) do
  L16_16 = explode(_FORV_21_.value, "|")
  table.insert(L15_15.detectionLog, {
    name = _FORV_21_.key,
    ppid = L16_16[2],
    timestamp = _FORV_21_.insert_time,
    file = L16_16[3]
  })
  L3_3 = L3_3 + L16_16[1]
end
if L5_5 <= L3_3 then
  bm.add_related_string("officegen", safeJsonSerialize(L15_15), bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
