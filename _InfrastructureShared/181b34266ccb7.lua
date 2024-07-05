local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L1_1 = "|.js|jse|wsf|vbs|vbe|xls|doc|ppt|pps|"
L2_2 = "|docx|pptx|ppsx|xlsx|rtf|"
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L0_0 = L3_3.utf8p2
  end
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.utf8p2
    if L3_3 ~= nil then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[2]
      L0_0 = L3_3.utf8p2
    end
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L3_3 = L3_3.utf8p2
      if L3_3 ~= nil then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[3]
        L0_0 = L3_3.utf8p2
      end
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[4]
        L3_3 = L3_3.utf8p2
        if L3_3 ~= nil then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[4]
          L0_0 = L3_3.utf8p2
        end
      else
        L3_3 = this_sigattrlog
        L3_3 = L3_3[5]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[5]
          L3_3 = L3_3.utf8p2
          if L3_3 ~= nil then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[5]
            L0_0 = L3_3.utf8p2
          end
        else
          L3_3 = this_sigattrlog
          L3_3 = L3_3[6]
          L3_3 = L3_3.matched
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[6]
            L3_3 = L3_3.utf8p2
            if L3_3 ~= nil then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[6]
              L0_0 = L3_3.utf8p2
            end
          end
        end
      end
    end
  end
end
if L0_0 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  for L7_7, L8_8 in L4_4(L5_5) do
    L9_9 = sysio
    L9_9 = L9_9.IsFileExists
    L10_10 = L8_8
    L9_9 = L9_9(L10_10)
    if L9_9 then
      L9_9 = string
      L9_9 = L9_9.lower
      L10_10 = string
      L10_10 = L10_10.sub
      L10_10 = L10_10(L8_8, -4)
      L9_9 = L9_9(L10_10, L10_10(L8_8, -4))
      L10_10 = string
      L10_10 = L10_10.sub
      L10_10 = L10_10(L9_9, -3)
      if string.find(L2_2, L9_9, 1, true) or string.find(L1_1, L10_10, 1, true) then
        bm.add_related_file(L8_8)
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
