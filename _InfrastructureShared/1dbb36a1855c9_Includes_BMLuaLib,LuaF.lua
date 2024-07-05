local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 then
    L1_1 = safeJsonDeserialize
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
    if not L0_0 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L1_1 = nil
L2_2 = L0_0.AttributeValue
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.AttributeValue
L3_3 = safeJsonDeserialize
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 then
  L1_1 = L3_3.AppName
else
  L5_5 = L2_2
  L4_4 = L2_2.match
  L6_6 = "[^|]+"
  L4_4 = L4_4(L5_5, L6_6)
  L1_1 = L4_4
end
if not L1_1 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {}
L4_4.isThreat = false
L5_5 = bm
L5_5 = L5_5.get_imagepath
L5_5 = L5_5()
if not L5_5 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L7_7 = L5_5
L6_6 = L5_5.match
L8_8 = "([^\\]+)$"
L6_6 = L6_6(L7_7, L8_8)
if not L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L4_4.processName = L6_6
L7_7 = this_sigattrlog
L7_7 = L7_7[2]
L7_7 = L7_7.matched
if L7_7 then
  L4_4.type = "BM_SIGTRIGGER"
  L7_7 = this_sigattrlog
  L7_7 = L7_7[2]
  L7_7 = L7_7.utf8p1
  L4_4.event = L7_7
  L7_7 = this_sigattrlog
  L7_7 = L7_7[2]
  L7_7 = L7_7.utf8p1
  L7_7 = L7_7 == "THREAT" and true
  L4_4.isThreat = L7_7
else
  L7_7 = this_sigattrlog
  L7_7 = L7_7[3]
  L7_7 = L7_7.matched
  if L7_7 then
    L4_4.type = "BM_SIGTRIGGER"
    L7_7 = this_sigattrlog
    L7_7 = L7_7[3]
    L7_7 = L7_7.utf8p1
    L4_4.event = L7_7
    L7_7 = this_sigattrlog
    L7_7 = L7_7[3]
    L7_7 = L7_7.utf8p1
    L7_7 = L7_7 == "THREAT" and true
    L4_4.isThreat = L7_7
  else
    L7_7 = this_sigattrlog
    L7_7 = L7_7[4]
    L7_7 = L7_7.matched
    if L7_7 then
      L4_4.type = "BM_SIGTRIGGER"
      L7_7 = this_sigattrlog
      L7_7 = L7_7[4]
      L7_7 = L7_7.utf8p1
      L4_4.event = L7_7
      L7_7 = this_sigattrlog
      L7_7 = L7_7[4]
      L7_7 = L7_7.utf8p1
      L7_7 = L7_7 == "THREAT" and true
      L4_4.isThreat = L7_7
    else
      L7_7 = this_sigattrlog
      L7_7 = L7_7[5]
      L7_7 = L7_7.matched
      if L7_7 then
        L4_4.type = "BM_TP_IGNORE"
        L7_7 = this_sigattrlog
        L7_7 = L7_7[5]
        L7_7 = L7_7.reg_block_usermode
        L4_4.block_usermode = L7_7
        L7_7 = this_sigattrlog
        L7_7 = L7_7[5]
        L7_7 = L7_7.utf8p1
        L4_4.event = L7_7
        L4_4.isThreat = true
      else
        L7_7 = this_sigattrlog
        L7_7 = L7_7[6]
        L7_7 = L7_7.matched
        if L7_7 then
          L4_4.type = "BM_TP_IGNORE"
          L7_7 = this_sigattrlog
          L7_7 = L7_7[6]
          L7_7 = L7_7.reg_block_usermode
          L4_4.block_usermode = L7_7
          L7_7 = this_sigattrlog
          L7_7 = L7_7[6]
          L7_7 = L7_7.utf8p1
          L4_4.event = L7_7
          L4_4.isThreat = true
        else
          L7_7 = this_sigattrlog
          L7_7 = L7_7[7]
          L7_7 = L7_7.matched
          if L7_7 then
            L4_4.type = "BM_TP_BLOCK"
            L7_7 = this_sigattrlog
            L7_7 = L7_7[7]
            L7_7 = L7_7.reg_block_usermode
            L4_4.block_usermode = L7_7
            L7_7 = this_sigattrlog
            L7_7 = L7_7[7]
            L7_7 = L7_7.utf8p1
            L4_4.event = L7_7
            L4_4.isThreat = true
          else
            L7_7 = this_sigattrlog
            L7_7 = L7_7[8]
            L7_7 = L7_7.matched
            if L7_7 then
              L4_4.type = "BM_TP_BLOCK"
              L7_7 = this_sigattrlog
              L7_7 = L7_7[8]
              L7_7 = L7_7.reg_block_usermode
              L4_4.block_usermode = L7_7
              L7_7 = this_sigattrlog
              L7_7 = L7_7[8]
              L7_7 = L7_7.utf8p1
              L4_4.event = L7_7
              L4_4.isThreat = true
            else
              L7_7 = this_sigattrlog
              L7_7 = L7_7[9]
              L7_7 = L7_7.matched
              if L7_7 then
                L4_4.type = "CMD_DETECTION"
                L7_7 = this_sigattrlog
                L7_7 = L7_7[9]
                L7_7 = L7_7.utf8p2
                L4_4.event = L7_7
                L7_7 = this_sigattrlog
                L7_7 = L7_7[9]
                L7_7 = L7_7.utf8p1
                L7_7 = L7_7 == "BM_BLOCKPROCESSCREATE" and true
                L4_4.isThreat = L7_7
              else
                L7_7 = this_sigattrlog
                L7_7 = L7_7[10]
                L7_7 = L7_7.matched
                if L7_7 then
                  L4_4.type = "AMSI_DETECTION"
                  L7_7 = this_sigattrlog
                  L7_7 = L7_7[10]
                  L7_7 = L7_7.utf8p1
                  L4_4.event = L7_7
                  L7_7 = this_sigattrlog
                  L7_7 = L7_7[10]
                  L7_7 = L7_7.utf8p2
                  L7_7 = L7_7 == "INFECTED" and true
                  L4_4.isThreat = L7_7
                end
              end
            end
          end
        end
      end
    end
  end
end
L7_7 = add_parents
L7_7()
L7_7 = reportRelevantUntrustedEntities
L8_8 = 0
L7_7(L8_8)
L0_0.TamperingEvent = L4_4
L7_7 = bm
L7_7 = L7_7.add_related_string
L8_8 = "AdditionalInfo"
L9_9 = safeJsonSerialize
L10_10 = L0_0
L9_9 = L9_9(L10_10)
L10_10 = bm
L10_10 = L10_10.RelatedStringBMReport
L7_7(L8_8, L9_9, L10_10)
L7_7 = bm
L7_7 = L7_7.get_current_process_startup_info
L7_7 = L7_7()
L8_8 = startTrackingApp
L9_9 = L7_7.ppid
L10_10 = L1_1
L9_9 = L8_8(L9_9, L10_10, "programfiles_Net", L0_0.AttributeName)
if not L8_8 then
  L9_9.SignatureName = "PFATamper.E"
  L10_10 = MpCommon
  L10_10 = L10_10.BmTriggerSig
  L10_10(L7_7.ppid, "ProcAttribError", safeJsonSerialize(L9_9))
else
  L10_10 = L4_4.isThreat
  if L10_10 then
    L10_10 = 30
  else
    L10_10 = L10_10 or 10
  end
  IncreaseProcessAnomalyScore(L7_7.ppid, L10_10, "Tampering", L0_0.AttributeName)
end
L10_10 = mp
L10_10 = L10_10.INFECTED
return L10_10
