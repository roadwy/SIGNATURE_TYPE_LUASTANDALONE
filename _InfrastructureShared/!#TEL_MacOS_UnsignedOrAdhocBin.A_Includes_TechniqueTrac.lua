local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FULL
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L4_4 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3, L4_4))
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 5 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "/bin/"
L2_2 = L2_2(L3_3, L4_4, 1, true)
if L2_2 ~= 1 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L4_4 = "/system/"
  L2_2 = L2_2(L3_3, L4_4, 1, true)
  if L2_2 ~= 1 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L4_4 = "/sbin/"
    L2_2 = L2_2(L3_3, L4_4, 1, true)
    if L2_2 ~= 1 then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L1_1
      L4_4 = "/library/apple/"
      L2_2 = L2_2(L3_3, L4_4, 1, true)
      if L2_2 ~= 1 then
        L2_2 = string
        L2_2 = L2_2.find
        L3_3 = L1_1
        L4_4 = "/private/var/db/com.apple.xpc.roleaccountd.staging"
        L2_2 = L2_2(L3_3, L4_4, 1, true)
        if L2_2 ~= 1 then
          L2_2 = string
          L2_2 = L2_2.find
          L3_3 = L1_1
          L4_4 = "/usr/"
          L2_2 = L2_2(L3_3, L4_4, 1, true)
          if L2_2 == 1 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_3 = L1_1
            L4_4 = "/usr/local/"
            L2_2 = L2_2(L3_3, L4_4, 1, true)
          elseif L2_2 == 1 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_3 = L1_1
            L4_4 = "/applications/microsoft defender.app/"
            L2_2 = L2_2(L3_3, L4_4, 1, true)
          end
        end
      end
    end
  end
elseif L2_2 == 1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESS_PPID
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.GetCertificateInfo
L3_3 = L3_3()
L4_4 = #L3_3
if L4_4 < 1 or L3_3 == nil then
  L4_4 = "MAC_UNSIGNED_ADHOC_PATHS"
  if L2_2 then
    MpCommon.BmTriggerSig(L2_2, "BM_UnsignedOrAdhocMacBin", L1_1)
  end
  AppendToRollingQueue(L4_4, "unsigned_adhoc_items", L1_1)
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
