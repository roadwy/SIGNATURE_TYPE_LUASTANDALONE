local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_REMOTE_SESSION_IP
L1_1 = L0_0(L1_1, L2_2)
if not L0_0 or not L1_1 or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESS_ID
L2_2 = L2_2(L3_3)
if not L2_2 or L2_2 >= 12 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilename
L4_4 = mp
L4_4 = L4_4.bitor
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_FULL
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_LOWERCASE
L11_11 = L4_4(L5_5, L6_6)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L4_4(L5_5, L6_6))
L3_3 = L3_3 or ""
L4_4 = mp
L4_4 = L4_4.get_contextdata
L5_5 = mp
L5_5 = L5_5.CONTEXT_DATA_PROCESS_PPID
L4_4 = L4_4(L5_5)
L4_4 = L4_4 or ""
if L3_3 == "" or L4_4 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = pcall
L6_6 = mp
L6_6 = L6_6.get_contextdata
L7_7 = mp
L7_7 = L7_7.CONTEXT_DATA_REMOTE_SESSION_DOMAINNAME
L6_6 = L5_5(L6_6, L7_7)
L7_7 = pcall
L8_8 = mp
L8_8 = L8_8.get_contextdata
L9_9 = mp
L9_9 = L9_9.CONTEXT_DATA_REMOTE_SESSION_USERNAME
L8_8 = L7_7(L8_8, L9_9)
if not L5_5 or not L6_6 or L6_6 == "" or not L7_7 or not L8_8 or L8_8 == "" then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = mp
L9_9 = L9_9.IsTrustedFile
L10_10 = false
L9_9 = L9_9(L10_10)
if L9_9 == true then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = L1_1
L10_10 = "|"
L11_11 = crypto
L11_11 = L11_11.Sha1Buffer
L11_11 = L11_11(L6_6, 0, #L6_6)
L9_9 = L9_9 .. L10_10 .. L11_11 .. "|" .. crypto.Sha1Buffer(L8_8, 0, #L8_8)
L10_10 = MpCommon
L10_10 = L10_10.Base64Encode
L11_11 = L3_3
L10_10 = L10_10(L11_11)
L11_11 = AppendToRollingQueue
L11_11("rq_fileremotedrop", L10_10, L9_9, 1209600, 100, 1)
L11_11 = string
L11_11 = L11_11.format
L11_11 = L11_11("MpInternal_researchdata=FileRemoteDropContext=%s", L9_9)
mp.set_mpattribute(L11_11)
mp.set_mpattribute("MpDisableCaching")
return mp.INFECTED
