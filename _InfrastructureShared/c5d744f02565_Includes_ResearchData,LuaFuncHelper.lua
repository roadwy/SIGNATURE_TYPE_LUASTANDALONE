local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetProcessAttributeValue
L2_2 = L0_0
L3_3 = "inherit:PFApp_Parent"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.hstr_full_log
L3_3 = L3_3()
if L3_3 then
  L4_4 = L3_3[2]
  L4_4 = L4_4.matched
  if not L4_4 then
    L4_4 = L3_3[3]
    L4_4 = L4_4.matched
  elseif L4_4 then
    L4_4 = MpCommon
    L4_4 = L4_4.StringRegExpSearch
    L5_5 = "(powershell|pwsh).exe.*-e(nc)?\\s+([-A-Za-z0-9+/]{10,}=*)"
    L6_6 = L2_2
    L5_5 = L4_4(L5_5, L6_6)
    if not L4_4 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
  end
end
L4_4 = ""
L5_5 = 1
L6_6 = ""
L7_7 = {}
L8_8 = "(?:(?i)FromBase64String\\(['\"]?)(\\$[\\w_]+|[-A-Za-z0-9+/]*={0,3})(?:['\"]?\\))"
L9_9 = MpCommon
L9_9 = L9_9.StringRegExpSearch
L10_10 = L8_8
L11_11 = L2_2
L10_10 = L9_9(L10_10, L11_11)
if L9_9 then
  L11_11 = string
  L11_11 = L11_11.find
  L12_12 = L10_10
  L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15)
  if L11_11 then
    L11_11 = string
    L11_11 = L11_11.match
    L12_12 = L10_10
    L11_11 = L11_11(L12_12, L13_13)
    if L11_11 then
      L12_12 = L11_11
      L12_12 = L12_12 .. L13_13 .. L14_14
      if L13_13 then
        if L14_14 > 35 then
          L5_5 = L5_5 + 10
        end
        if L14_14 then
          L4_4 = L14_14
        else
          L5_5 = L5_5 + 10
          L6_6 = "obfuscated_var1"
        end
      else
        L16_16 = "[^;]+"
        L12_12 = L14_14 .. L15_15 .. L16_16
        L16_16 = L12_12
        if L13_13 then
          L16_16 = "[A-Za-z]:\\[^%s]+"
          if not L14_14 then
            L5_5 = L5_5 + 10
            L6_6 = "obfuscated_var2"
          end
        end
      end
    end
  end
elseif L9_9 then
  L11_11 = #L10_10
  if L11_11 > 35 then
    L5_5 = L5_5 + 10
  end
  L11_11 = MpCommon
  L11_11 = L11_11.Base64Decode
  L12_12 = L10_10
  L11_11 = L11_11(L12_12)
  if L11_11 then
    L4_4 = L11_11
  else
    L5_5 = L5_5 + 10
    L6_6 = "obfuscated_var3"
  end
elseif not L9_9 then
  L8_8 = "-e (\\$[\\w_]+|[-A-Za-z0-9+/]*={0,3})"
  L11_11 = MpCommon
  L11_11 = L11_11.StringRegExpSearch
  L12_12 = L8_8
  L12_12 = L11_11(L12_12, L13_13)
  L10_10 = L12_12
  L9_9 = L11_11
  if L9_9 then
    L11_11 = MpCommon
    L11_11 = L11_11.Base64Decode
    L12_12 = L10_10
    L11_11 = L11_11(L12_12)
    if L11_11 then
      L4_4 = L11_11
    else
      L5_5 = L5_5 + 10
      L6_6 = "obfuscated_var5"
    end
  else
    L5_5 = L5_5 + 10
    L6_6 = "obfuscated_var4"
  end
end
L11_11 = string
L11_11 = L11_11.lower
L12_12 = L2_2
L11_11 = L11_11(L12_12)
L2_2 = L11_11
L11_11 = string
L11_11 = L11_11.lower
L12_12 = L4_4
L11_11 = L11_11(L12_12)
L4_4 = L11_11
L11_11 = L2_2
L12_12 = L4_4
L11_11 = L11_11 .. L12_12
L12_12 = {}
L12_12["[io.file]::writeallbytes"] = 5
L12_12["system.reflection.assembly"] = 5
L12_12["iisy.invoke"] = 5
L12_12.tcplistener = 5
L12_12.accepttcpclient = 5
L12_12.tcpclient = 5
L12_12.downloadstring = 5
L12_12["[^r]shell[^.]"] = 5
L12_12["cmd.exe"] = 5
L12_12.defender = 30
L12_12.scriptblock = 5
L12_12.webrequest = 5
L12_12["user-agent"] = 10
L12_12.webclient = 5
L12_12["unicode.getstring"] = 5
L12_12.whoami = 5
L12_12["net user"] = 5
for L16_16, _FORV_17_ in L13_13(L14_14) do
  if string.find(L11_11, L16_16) then
    L5_5 = L5_5 + _FORV_17_
    L6_6 = L6_6 .. ";" .. L16_16
  end
end
L16_16 = L11_11
if L14_14 then
  L7_7.uri = L15_15
  L5_5 = L5_5 + 10
  L16_16 = L6_6
  L6_6 = L16_16 .. ";url"
  L16_16 = MpCommon
  L16_16 = L16_16.StringRegExpSearch
  _, L16_16 = ".(exe|dll|ps1|bat|rar)$", L16_16(".(exe|dll|ps1|bat|rar)$", L15_15)
  if L14_14 then
    L5_5 = L5_5 + 10
    L16_16 = L6_6
    L6_6 = L16_16 .. ";file_extension"
  end
  L16_16 = string
  L16_16 = L16_16.find
  L16_16 = L16_16(L15_15, "%d+%.%d+%.%d+%.%d+")
  if L16_16 then
    L5_5 = L5_5 + 10
    L16_16 = L6_6
    L6_6 = L16_16 .. ";IP"
  end
  L16_16 = {}
  L16_16.SIG_CONTEXT = "CMD"
  L16_16.FILELESS = "true"
  L16_16.CMDLINE_URL = "true"
  if SafeGetUrlReputation({L15_15}, L16_16, false, 2000) and SafeGetUrlReputation({L15_15}, L16_16, false, 2000).urls[L15_15] and SafeGetUrlReputation({L15_15}, L16_16, false, 2000).urls[L15_15].determination ~= 1 and SafeGetUrlReputation({L15_15}, L16_16, false, 2000).urls[L15_15].confidence >= 60 then
    L7_7.detectorId = "BadUrlRep"
    L7_7.confidence = SafeGetUrlReputation({L15_15}, L16_16, false, 2000).urls[L15_15].confidence
    L7_7.determination = SafeGetUrlReputation({L15_15}, L16_16, false, 2000).urls[L15_15].determination
    L5_5 = L5_5 + 10
  end
end
L16_16 = string
L16_16 = L16_16.find
L16_16 = L16_16(L4_4, "frombase64string", 1, true)
if L16_16 then
  L5_5 = L5_5 + 10
  L16_16 = L6_6
  L6_6 = L16_16 .. ";MultilayerEncoding"
end
L7_7.Score = L5_5
L7_7.ProcessAttribute = L1_1
L7_7.Evidence = L6_6
function L16_16(A0_17)
  local L1_18, L2_19, L3_20, L4_21, L5_22, L6_23, L7_24
  L1_18 = _UPVALUE0_
  if L1_18 then
    L1_18 = _UPVALUE0_
    L1_18 = L1_18[2]
    L1_18 = L1_18.matched
    if not L1_18 then
      L1_18 = _UPVALUE0_
      L1_18 = L1_18[5]
      L1_18 = L1_18.matched
      if not L1_18 then
        L1_18 = _UPVALUE0_
        L1_18 = L1_18[3]
        L1_18 = L1_18.matched
      end
    elseif L1_18 then
      L1_18 = false
      return L1_18
    end
  end
  L1_18 = {
    L2_19,
    L3_20,
    L4_21,
    L5_22
  }
  L2_19 = "httpd"
  L2_19 = false
  for L6_23, L7_24 in L3_20(L4_21) do
    if string.find(A0_17, L7_24) then
      L2_19 = true
      break
    end
  end
  return L2_19
end
if L16_16(L1_1) and L5_5 > 30 then
  L7_7.Concrete = true
  set_research_data("Evidence", MpCommon.Base64Encode(safeJsonSerialize(L7_7)), false)
  return mp.INFECTED
end
L7_7.Concrete = false
set_research_data("Evidence", MpCommon.Base64Encode(safeJsonSerialize(L7_7)), false)
return mp.LOWFI
