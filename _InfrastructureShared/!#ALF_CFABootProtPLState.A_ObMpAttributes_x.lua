local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.GetResmgrBasePlugin
L0_0 = L0_0()
if L0_0 ~= "Regkeyvalue" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L8_8 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L1_1(L2_2))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "hklm\\software\\microsoft\\windows defender\\diagnostics"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 ~= nil then
  L1_1 = nil
  L2_2 = sysio
  L2_2 = L2_2.RegOpenKey
  L3_3 = "hklm\\software\\microsoft\\windows defender\\diagnostics"
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L3_3 = sysio
    L3_3 = L3_3.GetRegValueAsDword
    L4_4 = L2_2
    L5_5 = "MpPayloadStatus"
    L3_3 = L3_3(L4_4, L5_5)
    L1_1 = L3_3
  end
  if L1_1 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = {}
  L3_3[4294966296] = "EXIT_CODE_EXCEPTION"
  L3_3[4294966295] = "EXIT_CODE_NO_DOMAIN_KEY"
  L3_3[4294966294] = "EXIT_CODE_QUERY_DOMAIN_FAILED"
  L3_3[4294966293] = "EXIT_CODE_INVALID_DOS_HEADER"
  L3_3[4294966292] = "EXIT_CODE_FAILED_TO_FIND_OVERLAY"
  L3_3[4294966291] = "EXIT_CODE_FAILED_TO_OPEN_CFA_KEY"
  L3_3[4294966290] = "EXIT_CODE_FAILED_TO_QUERY_CFA_KEY"
  L3_3[4294966289] = "EXIT_CODE_FAILED_TO_SET_CFA_KEY"
  L3_3[4294966288] = "EXIT_CODE_CFA_KEY_ALREADY_SET"
  L3_3[4294966287] = "EXIT_CODE_CFA_KEY_SET_SUCCESS"
  L3_3[4294966286] = "EXIT_CODE_CFA_ATOI_EXCEPTION"
  L4_4 = tonumber
  L5_5 = L1_1
  L4_4 = L4_4(L5_5)
  L4_4 = L3_3[L4_4]
  if L4_4 == nil then
    L5_5 = tostring
    L6_6 = L1_1
    L5_5 = L5_5(L6_6)
    L4_4 = L5_5
  end
  L5_5 = mp
  L5_5 = L5_5.set_mpattribute
  L6_6 = string
  L6_6 = L6_6.format
  L7_7 = "MpInternal_researchdata=MpPayloadStatus=%s"
  L8_8 = L4_4
  L8_8 = L6_6(L7_7, L8_8)
  L5_5(L6_6, L7_7, L8_8, L6_6(L7_7, L8_8))
  L5_5 = MpCommon
  L5_5 = L5_5.SetPersistContextNoPath
  L6_6 = "MacMatchesHighRiskProtectionTarget"
  L7_7 = {L8_8}
  L8_8 = "on"
  L8_8 = 0
  L5_5(L6_6, L7_7, L8_8)
  L5_5 = 0
  L6_6 = sysio
  L6_6 = L6_6.RegOpenKey
  L7_7 = "hklm\\software\\microsoft\\windows defender\\windows defender exploit guard\\controlled folder access"
  L6_6 = L6_6(L7_7)
  if L6_6 then
    L7_7 = sysio
    L7_7 = L7_7.GetRegValueAsDword
    L8_8 = L6_6
    L7_7 = L7_7(L8_8, "enablecontrolledfolderaccess")
    L5_5 = L7_7
  end
  if L5_5 == nil then
    L7_7 = mp
    L7_7 = L7_7.INFECTED
    return L7_7
  end
  L7_7 = {}
  L7_7[0] = "CFA_DISABLED"
  L7_7[1] = "CFA_BLOCK_MODE"
  L7_7[2] = "CFA_AUDIT_MODE"
  L7_7[3] = "CFA_BOOTDISK_BLOCK_MODE"
  L7_7[4] = "CFA_BOOTDISK_AUDIT_MODE"
  L8_8 = tonumber
  L8_8 = L8_8(L5_5)
  L8_8 = L7_7[L8_8]
  if L8_8 == nil then
    L8_8 = tostring(L5_5)
  end
  mp.set_mpattribute(string.format("MpInternal_researchdata=CFAStatus=%s", L8_8))
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
