local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
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
L1_1 = L1_1.GetCertificateInfo
L1_1 = L1_1()
L2_2 = #L1_1
if L2_2 > 0 and L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.bitor
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_FNAME
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_PATH
L4_4 = L4_4(L5_5, L6_6)
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
L12_12 = L3_3(L4_4, L5_5)
L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L3_3(L4_4, L5_5))
if L3_3 == nil or L3_3 == "" or L2_2 == nil or L2_2 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.get_contextdata
L5_5 = mp
L5_5 = L5_5.CONTEXT_DATA_PROCESS_PPID
L4_4 = L4_4(L5_5)
L5_5 = L2_2
L6_6 = "/"
L5_5 = L5_5 .. L6_6 .. L7_7
L6_6 = string
L6_6 = L6_6.find
L10_10 = true
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
if L6_6 ~= 1 then
  L6_6 = string
  L6_6 = L6_6.find
  L10_10 = true
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  if L6_6 ~= 1 then
    L6_6 = string
    L6_6 = L6_6.find
    L10_10 = true
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
    if L6_6 ~= 1 then
      L6_6 = string
      L6_6 = L6_6.find
      L10_10 = true
      L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
      if L6_6 ~= 1 then
        L6_6 = string
        L6_6 = L6_6.find
        L10_10 = true
        L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
        if L6_6 ~= 1 then
          L6_6 = string
          L6_6 = L6_6.find
          L10_10 = true
          L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
          if L6_6 ~= 1 then
            L6_6 = string
            L6_6 = L6_6.find
            L10_10 = true
            L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
          end
        end
      end
    end
  end
elseif L6_6 == 1 then
  L6_6 = {
    L7_7,
    L8_8,
    L9_9,
    L10_10,
    L11_11,
    L12_12,
    "jobinfo",
    "chrome",
    "pdf",
    "discord",
    "word",
    "excel",
    "onenote",
    "edge",
    "outlook",
    "powerpoint",
    "teams",
    "remote",
    "calendar",
    "calculator",
    "itunes",
    "imovie",
    "facetime",
    "launchpad",
    "maps",
    "numbers",
    "ondrive",
    "reminder",
    "safari",
    "mail",
    "photos",
    "time machine",
    "desktop",
    "magnet",
    "alfred",
    "pdf expert",
    "disk drill",
    "cleverfile",
    "miner",
    "telegram",
    "teamspeak",
    "element",
    "mumble",
    "guilded",
    "apple",
    "mozilla",
    "firefox",
    "oracle",
    "xpcservice",
    "microsoft",
    L7_7
  }
  L10_10 = "update"
  L11_11 = "patch"
  L12_12 = "celastradepro"
  for L10_10, L11_11 in L7_7(L8_8) do
    L12_12 = string
    L12_12 = L12_12.match
    L12_12 = L12_12(L3_3, L11_11)
    if L12_12 then
      L12_12 = mp
      L12_12 = L12_12.set_mpattribute
      L12_12("BM_MacBinaryMasquerading")
      if L4_4 then
        L12_12 = MpCommon
        L12_12 = L12_12.BmTriggerSig
        L12_12(L4_4, "BM_MacBinaryMasquerading", L5_5)
        L12_12 = TrackPidAndTechnique
        L12_12(L4_4, "T1036.005", "DefenseEvasion_Masquerading")
      end
      L12_12 = mp
      L12_12 = L12_12.INFECTED
      return L12_12
    end
    L12_12 = L3_3.gsub
    L12_12 = L12_12(L3_3, "%W", "")
    if string.match(L12_12, L11_11) then
      mp.set_mpattribute("BM_MacBinaryMasquerading")
      if L4_4 then
        MpCommon.BmTriggerSig(L4_4, "BM_MacBinaryMasquerading", L5_5)
        TrackPidAndTechnique(L4_4, "T1036.005", "DefenseEvasion_Masquerading")
      end
      return mp.INFECTED
    end
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
