local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
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
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_FNAME
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_PATH
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L11_11 = L2_2(L3_3, L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2(L3_3, L4_4))
if L2_2 == nil or L2_2 == "" or L1_1 == nil or L1_1 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_PROCESS_PPID
L3_3 = L3_3(L4_4)
L4_4 = L1_1
L5_5 = "/"
L4_4 = L4_4 .. L5_5 .. L6_6
L5_5 = string
L5_5 = L5_5.find
L9_9 = true
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
if L5_5 ~= 1 then
  L5_5 = string
  L5_5 = L5_5.find
  L9_9 = true
  L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
  if L5_5 ~= 1 then
    L5_5 = string
    L5_5 = L5_5.find
    L9_9 = true
    L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
    if L5_5 ~= 1 then
      L5_5 = string
      L5_5 = L5_5.find
      L9_9 = true
      L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
      if L5_5 ~= 1 then
        L5_5 = string
        L5_5 = L5_5.find
        L9_9 = true
        L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
        if L5_5 ~= 1 then
          L5_5 = string
          L5_5 = L5_5.find
          L9_9 = true
          L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
          if L5_5 ~= 1 then
            L5_5 = string
            L5_5 = L5_5.find
            L9_9 = true
            L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
          end
        end
      end
    end
  end
elseif L5_5 == 1 then
  L5_5 = {
    L6_6,
    L7_7,
    L8_8,
    L9_9,
    L10_10,
    L11_11,
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
    L6_6
  }
  L9_9 = "update"
  L10_10 = "patch"
  L11_11 = "celastradepro"
  for L9_9, L10_10 in L6_6(L7_7) do
    L11_11 = string
    L11_11 = L11_11.match
    L11_11 = L11_11(L2_2, L10_10)
    if L11_11 then
      L11_11 = mp
      L11_11 = L11_11.set_mpattribute
      L11_11("BM_MacShMasquerading")
      if L3_3 then
        L11_11 = MpCommon
        L11_11 = L11_11.BmTriggerSig
        L11_11(L3_3, "BM_MacShMasquerading", L4_4)
        L11_11 = TrackPidAndTechnique
        L11_11(L3_3, "T1036.005", "DefenseEvasion_Masquerading")
      end
      L11_11 = mp
      L11_11 = L11_11.INFECTED
      return L11_11
    end
    L11_11 = L2_2.gsub
    L11_11 = L11_11(L2_2, "%W", "")
    if string.match(L11_11, L10_10) then
      mp.set_mpattribute("BM_MacShMasquerading")
      if L3_3 then
        MpCommon.BmTriggerSig(L3_3, "BM_MacShMasquerading", L4_4)
        TrackPidAndTechnique(L3_3, "T1036.005", "DefenseEvasion_Masquerading")
      end
      return mp.INFECTED
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
