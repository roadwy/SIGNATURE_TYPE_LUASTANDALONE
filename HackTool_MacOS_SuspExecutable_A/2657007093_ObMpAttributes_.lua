local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
elseif L0_0 ~= L1_1 then
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
L3_3 = L3_3(L4_4, L5_5)
L8_8 = L2_2(L3_3, L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3, L4_4))
if L2_2 == nil or L2_2 == "" or L1_1 == nil or L1_1 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 ~= 1 then
  L3_3 = string
  L3_3 = L3_3.find
  L7_7 = true
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  if L3_3 ~= 1 then
    L3_3 = string
    L3_3 = L3_3.find
    L7_7 = true
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
    if L3_3 ~= 1 then
      L3_3 = string
      L3_3 = L3_3.find
      L7_7 = true
      L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
      if L3_3 ~= 1 then
        L3_3 = string
        L3_3 = L3_3.find
        L7_7 = true
        L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
        if L3_3 ~= 1 then
          L3_3 = string
          L3_3 = L3_3.find
          L7_7 = true
          L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
          if L3_3 == 1 then
            L3_3 = string
            L3_3 = L3_3.find
            L7_7 = true
            L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
            L3_3 = not L3_3
          elseif L3_3 ~= 1 then
            L3_3 = string
            L3_3 = L3_3.find
            L7_7 = true
            L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
          end
        end
      end
    end
  end
elseif L3_3 == 1 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if not L3_3 then
  L3_3 = string
  L3_3 = L3_3.find
  L7_7 = true
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  if not L3_3 then
    L3_3 = string
    L3_3 = L3_3.find
    L7_7 = true
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  end
elseif L3_3 then
  L3_3 = {
    L4_4,
    L5_5,
    L6_6,
    L7_7,
    L8_8,
    "backdoor",
    "mettle",
    "phish",
    "meterpreter",
    "exploit",
    "payload"
  }
  L7_7 = "cronjob"
  L8_8 = "trojan"
  for L7_7, L8_8 in L4_4(L5_5) do
    if L8_8 ~= nil and string.find(L2_2, L8_8, 1, true) then
      mp.set_mpattribute("BM_SuspFilename")
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
