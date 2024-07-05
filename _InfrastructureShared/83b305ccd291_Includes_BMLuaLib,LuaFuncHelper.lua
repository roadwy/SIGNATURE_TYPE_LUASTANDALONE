local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = {}
L1_1 = mp
L1_1 = L1_1.SIGATTR_LOG_SZ
L2_2 = 0
L3_3 = 0
L4_4 = {}
L4_4.RansomNoteContent = true
L4_4.RansomNoteTriggerList = true
for L8_8 = L1_1, 1, -1 do
  if L2_2 == 0 then
    if L9_9 == 16384 then
      if L9_9 then
        if L9_9 ~= 37 then
          L3_3 = L8_8
        end
      end
    end
  elseif L9_9 == 16491 then
    if L9_9 then
      L12_12 = "Note"
      if L10_10 then
        L12_12 = "Notepad"
        if not L10_10 then
          if not L10_10 then
            if L10_10 == nil then
              L0_0[L9_9] = L8_8
              L2_2 = L2_2 + 1
            end
          end
        end
      end
    end
  end
end
if L2_2 > 0 and L3_3 then
  if L5_5 then
    if L5_5 then
      if not L5_5 then
        for L10_10, L11_11 in L7_7(L8_8, L9_9) do
          L6_6[L10_10] = L11_11
        end
        for L12_12, _FORV_13_ in L9_9(L10_10) do
          table.insert(L8_8, L12_12)
        end
        L12_12 = {}
        L12_12.NotePath = sigattr_tail[L3_3].utf8p1
        L12_12.TriggedSigs = L8_8
        L12_12.ProcInfo = L9_9
        L12_12.RemoteInfo = L6_6
        L12_12.Type = "NoteDrop"
        if SafeGetUrlReputation({L7_7}, {
          SIG_CONTEXT = "BM",
          CONTEXT_SOURCE = "GenRansomNote",
          TAG = "NOLOOKUP",
          data = safeJsonSerialize(L12_12)
        }).urls[L7_7] ~= nil and SafeGetUrlReputation({L7_7}, {
          SIG_CONTEXT = "BM",
          CONTEXT_SOURCE = "GenRansomNote",
          TAG = "NOLOOKUP",
          data = safeJsonSerialize(L12_12)
        }).urls[L7_7].determination == 2 and SafeGetUrlReputation({L7_7}, {
          SIG_CONTEXT = "BM",
          CONTEXT_SOURCE = "GenRansomNote",
          TAG = "NOLOOKUP",
          data = safeJsonSerialize(L12_12)
        }).urls[L7_7].confidence ~= nil and SafeGetUrlReputation({L7_7}, {
          SIG_CONTEXT = "BM",
          CONTEXT_SOURCE = "GenRansomNote",
          TAG = "NOLOOKUP",
          data = safeJsonSerialize(L12_12)
        }).urls[L7_7].confidence >= 60 and SafeGetUrlReputation({L7_7}, {
          SIG_CONTEXT = "BM",
          CONTEXT_SOURCE = "GenRansomNote",
          TAG = "NOLOOKUP",
          data = safeJsonSerialize(L12_12)
        }).urls[L7_7].context.Source == "GenRansomNote" then
          L12_12.confidence = SafeGetUrlReputation({L7_7}, {
            SIG_CONTEXT = "BM",
            CONTEXT_SOURCE = "GenRansomNote",
            TAG = "NOLOOKUP",
            data = safeJsonSerialize(L12_12)
          }).urls[L7_7].confidence
          L12_12.family = SafeGetUrlReputation({L7_7}, {
            SIG_CONTEXT = "BM",
            CONTEXT_SOURCE = "GenRansomNote",
            TAG = "NOLOOKUP",
            data = safeJsonSerialize(L12_12)
          }).urls[L7_7].context.Family
          L12_12.action = {
            action = SafeGetUrlReputation({L7_7}, {
              SIG_CONTEXT = "BM",
              CONTEXT_SOURCE = "GenRansomNote",
              TAG = "NOLOOKUP",
              data = safeJsonSerialize(L12_12)
            }).urls[L7_7].context.action,
            parameter = SafeGetUrlReputation({L7_7}, {
              SIG_CONTEXT = "BM",
              CONTEXT_SOURCE = "GenRansomNote",
              TAG = "NOLOOKUP",
              data = safeJsonSerialize(L12_12)
            }).urls[L7_7].context.action_parameter,
            ttl = SafeGetUrlReputation({L7_7}, {
              SIG_CONTEXT = "BM",
              CONTEXT_SOURCE = "GenRansomNote",
              TAG = "NOLOOKUP",
              data = safeJsonSerialize(L12_12)
            }).urls[L7_7].context.action_ttl
          }
          L12_12.ip = L7_7
          L12_12.unscrubbed_username = L10_10
          L12_12.unscrubbed_domain = L11_11
          bm.add_related_string("RemoteGenericMassRansomNoteDrop:Malware", safeJsonSerialize(L12_12), bm.RelatedStringBMReport)
          return mp.INFECTED
        end
      end
    end
  end
end
return L5_5
