local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p1
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.ppid
  end
end
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L0_0
L4_4 = 1
L5_5 = 1
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 == "%" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = IsLegacyOrgMachine
L3_3 = L2_2()
if L2_2 == true then
  L4_4 = bm
  L4_4 = L4_4.trigger_sig
  L5_5 = "LegacyOrgMachine"
  L6_6 = L3_3
  L4_4(L5_5, L6_6, L7_7)
end
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.utf8p2
L5_5 = versioning
L5_5 = L5_5.GetCloudBlockLevel
L5_5 = L5_5()
if L5_5 >= 4 then
  L5_5 = IsLegacyOrgMachine
  L5_5 = L5_5()
  if L5_5 == false and L4_4 ~= nil then
    L5_5 = #L4_4
    if L5_5 >= 1 then
      L5_5 = string
      L5_5 = L5_5.find
      L6_6 = L4_4
      L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
      if L5_5 ~= nil then
        L6_6 = #L4_4
        if L5_5 ~= L6_6 then
          L6_6 = getCustomStringHash
          L6_6 = L6_6(L7_7)
          if L6_6 ~= nil then
            if L8_8 > 0 then
              if not L8_8 then
                for L13_13, L14_14 in L10_10(L11_11) do
                  L15_15 = #L14_14
                  if L15_15 >= 5 then
                    L15_15 = string
                    L15_15 = L15_15.match
                    L16_16 = L14_14
                    L15_15 = L15_15(L16_16, "^[tT][0-9][0-9][0-9][0-9]")
                    if L15_15 then
                      L15_15 = string
                      L15_15 = L15_15.match
                      L16_16 = L14_14
                      L16_16 = L15_15(L16_16, "^([tT][0-9][0-9][0-9][0-9][%.]?[0-9]?[0-9]?[0-9]?):?(.*)")
                      TrackPidAndTechniqueBM(L1_1, L15_15, L16_16, 0)
                    else
                      L15_15 = string
                      L15_15 = L15_15.sub
                      L16_16 = L14_14
                      L15_15 = L15_15(L16_16, 1, 1)
                      if L15_15 == "[" then
                        L15_15 = string
                        L15_15 = L15_15.match
                        L16_16 = L14_14
                        L16_16 = L15_15(L16_16, "^%[(.-)%]=(.+)")
                        if L15_15 ~= nil and L16_16 ~= nil then
                          bm.trigger_sig(L15_15, L16_16, L1_1)
                        end
                      end
                    end
                  end
                end
                if L9_9 then
                  L13_13 = 0
                  L10_10(L11_11, L12_12, L13_13)
                end
              end
            end
          end
        end
      end
    end
  end
end
L5_5 = MpCommon
L5_5 = L5_5.GetPersistContextCount
L6_6 = L0_0
L5_5 = L5_5(L6_6)
if not (L5_5 <= 0) then
  L6_6 = MpCommon
  L6_6 = L6_6.QueryPersistContextNoPath
  L6_6 = L6_6(L7_7, L8_8)
elseif L6_6 == true then
  L6_6 = mp
  L6_6 = L6_6.INFECTED
  return L6_6
end
if L5_5 > 100 then
  L6_6 = mp
  L6_6 = L6_6.INFECTED
  return L6_6
end
L6_6 = MpCommon
L6_6 = L6_6.GetPersistContext
L6_6 = L6_6(L7_7)
for L10_10, L11_11 in L7_7(L8_8) do
  L13_13 = L1_1
  L14_14 = L11_11
  if not L12_12 then
    if L12_12 >= 4 then
      L13_13 = L11_11
      L14_14 = "^[tT][0-9][0-9][0-9][0-9]"
      if L12_12 then
        L13_13 = L11_11
        L14_14 = "^([tT][0-9][0-9][0-9][0-9][%.]?[0-9]?[0-9]?[0-9]?):?(.*)"
        L13_13 = L12_12(L13_13, L14_14)
        L14_14 = TrackPidAndTechniqueBM
        L15_15 = L1_1
        L16_16 = L12_12
        L14_14(L15_15, L16_16, L13_13, nil, true)
        L14_14 = #L11_11
        if L14_14 > 5 then
          L14_14 = string
          L14_14 = L14_14.sub
          L15_15 = L11_11
          L16_16 = 0
          L14_14 = L14_14(L15_15, L16_16, 5)
          L15_15 = MpCommon
          L15_15 = L15_15.QueryPersistContextNoPath
          L16_16 = L1_1
          L15_15 = L15_15(L16_16, L14_14)
          if not L15_15 then
            L15_15 = MpCommon
            L15_15 = L15_15.AppendPersistContextNoPath
            L16_16 = L1_1
            L15_15(L16_16, L14_14, 0)
          end
        end
        L14_14 = MpCommon
        L14_14 = L14_14.AppendPersistContextNoPath
        L15_15 = L1_1
        L16_16 = L11_11
        L14_14(L15_15, L16_16, 0)
      end
    end
  end
end
if not L7_7 then
  L7_7(L8_8, L9_9, L10_10)
end
return L7_7
