local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = bm
L2_2 = L2_2.get_imagepath
L8_8 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2())
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
      if not L2_2 then
        L2_2 = string
        L2_2 = L2_2.find
        L3_3 = L1_1
        L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
        if not L2_2 then
          L2_2 = string
          L2_2 = L2_2.find
          L3_3 = L1_1
          L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
          if not L2_2 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_3 = L1_1
            L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
            if not L2_2 then
              L2_2 = string
              L2_2 = L2_2.find
              L3_3 = L1_1
              L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
              if not L2_2 then
                L2_2 = string
                L2_2 = L2_2.find
                L3_3 = L1_1
                L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
                if not L2_2 then
                  L2_2 = string
                  L2_2 = L2_2.find
                  L3_3 = L1_1
                  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
                  if not L2_2 then
                    L2_2 = string
                    L2_2 = L2_2.find
                    L3_3 = L1_1
                    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
                    if not L2_2 then
                      L2_2 = string
                      L2_2 = L2_2.find
                      L3_3 = L1_1
                      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.ContextualExpandEnvironmentVariables
L8_8 = L3_3(L4_4)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3(L4_4))
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
    end
  end
elseif L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetExecutablesFromCommandLine
L3_3 = L3_3(L4_4)
for L7_7, L8_8 in L4_4(L5_5) do
  if sysio.IsFileExists(L8_8) then
    bm.add_related_file(L8_8)
    if not MpCommon.QueryPersistContext(L8_8, "T1547.001") then
      MpCommon.AppendPersistContext(L8_8, "T1547.001", 0)
    end
  end
end
return L4_4
