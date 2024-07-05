local L0_0
function L0_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13, L13_14, L14_15, L15_16, L16_17, L17_18, L18_19, L19_20, L20_21, L21_22, L22_23, L23_24
  L0_1 = reportHeaders
  L1_2 = {L2_3, L3_4}
  L2_3 = "Host"
  L3_4 = "User-Agent"
  L0_1(L1_2)
  L0_1 = this_sigattrlog
  L0_1 = L0_1[1]
  L0_1 = L0_1.utf8p1
  L1_2 = this_sigattrlog
  L1_2 = L1_2[1]
  L1_2 = L1_2.np2
  L2_3 = this_sigattrlog
  L2_3 = L2_3[2]
  L3_4 = this_sigattrlog
  L3_4 = L3_4[3]
  L4_5 = nri
  L4_5 = L4_5.GetURI
  L4_5 = L4_5()
  L5_6 = L2_3.utf8p1
  if L5_6 then
    L5_6 = L2_3.utf8p2
    L5_6 = L5_6 and L3_4.utf8p1
  elseif not L5_6 then
    L5_6 = mp
    L5_6 = L5_6.changedetectionname
    L6_7 = 805306718
    L5_6(L6_7)
    L5_6 = mp
    L5_6 = L5_6.INFECTED
    return L5_6
  end
  L5_6 = {}
  L6_7 = string
  L6_7 = L6_7.format
  L7_8 = "NP:%s:%d"
  L8_9 = L2_3.utf8p1
  L9_10 = L2_3.np2
  L6_7 = L6_7(L7_8, L8_9, L9_10)
  L5_6.SIG_CONTEXT = L6_7
  L5_6.CONTENT_SOURCE = "NP"
  L6_7 = L3_4.utf8p1
  L5_6.PROCESS_PATH = L6_7
  L5_6.C2 = "true"
  L6_7 = L0_1
  L7_8 = ":"
  L8_9 = L1_2
  L6_7 = L6_7 .. L7_8 .. L8_9
  L7_8 = mp
  L7_8 = L7_8.GetUrlReputation
  L8_9 = {L9_10, L10_11}
  L9_10 = L6_7
  L9_10 = L5_6
  L7_8 = L7_8(L8_9, L9_10)
  if not L7_8 then
    L8_9 = mp
    L8_9 = L8_9.changedetectionname
    L9_10 = 805306719
    L8_9(L9_10)
    L8_9 = mp
    L8_9 = L8_9.INFECTED
    return L8_9
  else
    L8_9 = {}
    L8_9.emotet = 805306695
    L8_9.trickbot = 805306697
    L8_9.dridex = 805306705
    L8_9.cobaltstrike = 805306707
    L8_9.qakbot = 805306709
    L8_9.zloader = 805306711
    L8_9.icedid = 805306713
    L9_10 = L7_8.urls
    for L13_14, L14_15 in L10_11(L11_12) do
      L15_16 = L14_15.determination
      if L15_16 == 2 then
        L15_16 = L14_15.urlresponsecontext
        if L15_16 then
          L16_17 = ""
          for L20_21, L21_22 in L17_18(L18_19) do
            L22_23 = L21_22.key
            L23_24 = L21_22.value
            if L22_23 == "MaceFamily" then
              L16_17 = string.lower(L23_24)
              break
            end
          end
          if L16_17 ~= "" then
            L18_19(L19_20)
            return L18_19
          end
        end
      end
    end
  end
end
if not pcallEx("adjustDetectionName", L0_0) then
  reportPcallEx()
end
return mp.INFECTED
