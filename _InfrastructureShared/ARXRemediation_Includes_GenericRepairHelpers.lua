local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8
  L1_3 = string
  L1_3 = L1_3.find
  L2_4 = A0_2
  L3_5 = "!ARX"
  L4_6 = 1
  L5_7 = true
  L2_4 = L1_3(L2_4, L3_5, L4_6, L5_7)
  if L1_3 == nil or L2_4 == nil then
    return
  end
  L3_5 = string
  L3_5 = L3_5.len
  L4_6 = A0_2
  L3_5 = L3_5(L4_6)
  if L3_5 == 0 then
    return
  end
  L4_6 = {}
  L2_4 = L2_4 + 1
  while L3_5 > L2_4 do
    L5_7 = string
    L5_7 = L5_7.sub
    L6_8 = A0_2
    L5_7 = L5_7(L6_8, L2_4, L2_4)
    L6_8 = string
    L6_8 = L6_8.sub
    L6_8 = L6_8(A0_2, L2_4 + 1, L2_4 + 1)
    if L5_7 < "a" or L5_7 > "z" or L6_8 < "a" or L6_8 > "z" then
      break
    end
    L4_6[L5_7 .. L6_8] = true
    L2_4 = L2_4 + 2
  end
  return L4_6
end
GetARXRemediationCodes = L0_0
function L0_0(A0_9)
  local L1_10
  if A0_9 ~= nil then
    L1_10 = string
    L1_10 = L1_10.match
    L1_10 = L1_10(A0_9, "^%a+:")
    if L1_10 ~= nil then
      L1_10 = string.lower(L1_10)
      return ({
        ["trojan:"] = 805306673,
        ["browsermodifier:"] = 805306674
      })[L1_10]
    end
  end
end
GetLatentNidByThreatCategory = L0_0
function L0_0()
  local L0_11, L1_12, L2_13
  L0_11 = MpDetection
  L0_11 = L0_11.GetCurrentThreat
  L0_11 = L0_11()
  if L0_11 ~= nil then
    L1_12 = L0_11.Name
  elseif L1_12 == nil then
    return
  end
  L1_12 = GetARXRemediationCodes
  L2_13 = L0_11.Name
  L1_12 = L1_12(L2_13)
  if L1_12 == nil then
    return
  end
  L2_13 = GetLatentNidByThreatCategory
  L2_13 = L2_13(L0_11.Name)
  if L2_13 == nil then
    return
  end
  for _FORV_6_, _FORV_7_ in pairs(L0_11.Resources) do
    if _FORV_7_.Schema == "file" and crypto.bitand(_FORV_7_.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE and L1_12.ep == true then
      Infrastructure_ReportProductExcludedPathsInGroupPolicy(L2_13)
    end
  end
end
ARX_DetectionSpecific = L0_0
function L0_0()
  local L0_14
  L0_14 = Remediation
  L0_14 = L0_14.Threat
  if L0_14 == nil or L0_14.Name == nil then
    return
  end
  if GetARXRemediationCodes(L0_14.Name) == nil then
    return
  end
  for _FORV_5_, _FORV_6_ in pairs(L0_14.Resources) do
    if _FORV_6_.Schema == "file" and crypto.bitand(_FORV_6_.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE and GetARXRemediationCodes(L0_14.Name).bx == true then
      Remediation.SetRemovalPolicy(crypto.bitor(Remediation.Threat.RemovalPolicy, 32))
    end
  end
end
ARX_PreRemediation = L0_0
