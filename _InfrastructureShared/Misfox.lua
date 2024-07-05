local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
function L0_0(A0_6, A1_7)
  local L2_8
  L2_8 = sysio
  L2_8 = L2_8.RegOpenKey
  L2_8 = L2_8(A0_6)
  if L2_8 and string.lower(sysio.GetRegValueAsString(L2_8, A1_7)) then
    sysio.DeleteRegKey(L2_8, nil)
  end
end
RemovePayloadFromRegistry = L0_0
function L0_0(A0_9)
  local L1_10, L2_11, L3_12, L4_13, L5_14, L6_15, L7_16, L8_17, L9_18, L10_19, L11_20, L12_21, L13_22, L14_23, L15_24, L16_25
  L1_10 = sysio
  L1_10 = L1_10.RegOpenKey
  L2_11 = A0_9
  L1_10 = L1_10(L2_11)
  if L1_10 then
    L2_11 = sysio
    L2_11 = L2_11.RegEnumValues
    L2_11 = L2_11(L3_12)
    for L6_15, L7_16 in L3_12(L4_13) do
      L8_17 = string
      L8_17 = L8_17.lower
      L9_18 = sysio
      L9_18 = L9_18.GetRegValueAsString
      L10_19 = L1_10
      L11_20 = L7_16
      L16_25 = L9_18(L10_19, L11_20)
      L8_17 = L8_17(L9_18, L10_19, L11_20, L12_21, L13_22, L14_23, L15_24, L16_25, L9_18(L10_19, L11_20))
      if not L8_17 then
        L9_18 = false
        return L9_18
      end
      L9_18 = string
      L9_18 = L9_18.match
      L10_19 = L8_17
      L11_20 = "%(%[text%.encoding%]::ascii%.getstring%(%[convert%]::frombase64string%(%(gp.*(hk%w%w:\\\\?software\\\\?classes\\\\?%w%w%w%w+).*%.(%w%w%w%w+)%)"
      L10_19 = L9_18(L10_19, L11_20)
      if L9_18 then
        L11_20 = sysio
        L11_20 = L11_20.DeleteRegValue
        L11_20(L12_21, L13_22)
        L11_20 = string
        L11_20 = L11_20.gsub
        L11_20 = L11_20(L12_21, L13_22, L14_23)
        L9_18 = L11_20
        L11_20 = string
        L11_20 = L11_20.gsub
        L11_20 = L11_20(L12_21, L13_22, L14_23)
        L9_18 = L11_20
        L11_20 = sysio
        L11_20 = L11_20.RegExpandUserKey
        L11_20 = L11_20(L12_21)
        for L15_24, L16_25 in L12_21(L13_22) do
          RemovePayloadFromRegistry(L16_25, L10_19)
        end
      end
    end
  end
end
RemoveMisfoxASEPs = L0_0
L0_0 = string
L0_0 = L0_0.match
L0_0 = L0_0(L1_1, L2_2)
if not L0_0 then
  L0_0 = string
  L0_0 = L0_0.match
  L0_0 = L0_0(L1_1, L2_2)
elseif L0_0 then
  L0_0 = RemoveMisfoxASEPs
  L0_0(L1_1)
  L0_0 = sysio
  L0_0 = L0_0.RegExpandUserKey
  L0_0 = L0_0(L1_1)
  for L4_4, L5_5 in L1_1(L2_2) do
    RemoveMisfoxASEPs(L5_5)
  end
end
