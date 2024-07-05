local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L0_0 = L2_2.utf8p2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L0_0 = L2_2.utf8p2
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L0_0 = L2_2.utf8p2
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[6]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[6]
        L0_0 = L2_2.utf8p2
      end
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L1_1 = L2_2.utf8p2
    end
  end
end
L2_2 = pcall
L3_3 = mp
L3_3 = L3_3.GetInlineScriptsFromCommandLine
L10_10 = L4_4(L5_5)
L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L4_4(L5_5))
if L2_2 and L3_3 then
  for L7_7, L8_8 in L4_4(L5_5) do
    L9_9 = pcall
    L10_10 = mp
    L10_10 = L10_10.ContextualExpandEnvironmentVariables
    L10_10 = L9_9(L10_10, L8_8)
    if L9_9 and L10_10 then
      bm.add_related_file(L10_10)
    end
  end
end
if L4_4 then
  L7_7 = true
  L8_8 = false
  if L5_5 == false then
    L5_5(L6_6)
  end
end
L7_7 = true
L8_8 = "SMS_M"
L9_9 = 1000
L10_10 = "Behavior:Win32/Qakbot.SD"
L5_5(L6_6, L7_7, L8_8, L9_9, L10_10)
return L5_5
