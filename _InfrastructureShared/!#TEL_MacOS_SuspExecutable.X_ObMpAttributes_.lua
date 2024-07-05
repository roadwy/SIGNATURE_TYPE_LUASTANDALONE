local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(L3_3, L4_4)
L7_7 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L1_1(L2_2, L3_3))
if L1_1 == nil or L1_1 == "" or L0_0 == nil or L0_0 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 ~= 1 then
  L2_2 = string
  L2_2 = L2_2.find
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 ~= 1 then
    L2_2 = string
    L2_2 = L2_2.find
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if L2_2 ~= 1 then
      L2_2 = string
      L2_2 = L2_2.find
      L6_6 = true
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
      if L2_2 ~= 1 then
        L2_2 = string
        L2_2 = L2_2.find
        L6_6 = true
        L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
        if L2_2 ~= 1 then
          L2_2 = string
          L2_2 = L2_2.find
          L6_6 = true
          L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
          if L2_2 == 1 then
            L2_2 = string
            L2_2 = L2_2.find
            L6_6 = true
            L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
            L2_2 = not L2_2
          elseif L2_2 ~= 1 then
            L2_2 = string
            L2_2 = L2_2.find
            L6_6 = true
            L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
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
L2_2 = string
L2_2 = L2_2.find
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  end
elseif L2_2 then
  L2_2 = {
    L3_3,
    L4_4,
    L5_5,
    L6_6,
    L7_7,
    "backdoor",
    "mettle",
    "phish",
    "meterpreter",
    "exploit",
    "payload"
  }
  L6_6 = "cronjob"
  L7_7 = "trojan"
  for L6_6, L7_7 in L3_3(L4_4) do
    if L7_7 ~= nil and string.find(L1_1, L7_7, 1, true) then
      mp.set_mpattribute("BM_SuspFilename")
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
