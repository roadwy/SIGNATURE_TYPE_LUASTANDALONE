local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
function L1_1(A0_9)
  local L1_10, L2_11, L3_12, L4_13, L5_14
  L1_10 = {}
  for L5_14 in L2_11(L3_12, L4_13) do
    table.insert(L1_10, L5_14)
  end
  return L1_10
end
if L0_0 ~= nil then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L0_0
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if L2_2 then
      L2_2 = L1_1
      L3_3 = L0_0
      L2_2 = L2_2(L3_3)
      L3_3 = {}
      L3_3.SIG_CONTEXT = "BM"
      L3_3.CONTENT_SOURCE = "WSCRIPT_SCHTASKS_OFN"
      L3_3.PROCESS_CONTEXT = "schtasks.exe"
      L3_3.FILELESS = "true"
      L3_3.CMDLINE_URL = "true"
      for L7_7, L8_8 in L4_4(L5_5) do
        if string.match(L8_8, "^https?://") and SafeGetUrlReputation({L8_8}, L3_3, false, 3000).urls[L8_8] and SafeGetUrlReputation({L8_8}, L3_3, false, 3000).urls[L8_8].determination == 2 and SafeGetUrlReputation({L8_8}, L3_3, false, 3000).urls[L8_8].confidence >= 60 then
          return mp.INFECTED
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
