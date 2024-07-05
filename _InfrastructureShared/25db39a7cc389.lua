local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L2_2 = {}
L3_3 = 0
L4_4 = 0
L5_5 = {}
L5_5[".tmp"] = true
L5_5[".exe"] = true
L5_5[".dll"] = true
L5_5[".ini"] = true
L5_5[".dat"] = true
L5_5[".log"] = true
L5_5[".reg"] = true
L5_5[".evtx"] = true
L5_5[".bat"] = true
L5_5[".zip"] = true
L5_5[".rar"] = true
L5_5[".manifest"] = true
L5_5[".clb"] = true
L5_5[".ccx"] = true
L5_5[".cch"] = true
L6_6 = bm
L6_6 = L6_6.get_imagepath
L6_6 = L6_6()
if L6_6 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(L6_6)
  L6_6 = L7_7
  L7_7 = string
  L7_7 = L7_7.find
  L7_7 = L7_7(L6_6, "\\windows\\", 1, true)
  if L7_7 == nil then
    L7_7 = string
    L7_7 = L7_7.find
    L7_7 = L7_7(L6_6, "\\program files", 1, true)
    if L7_7 == nil then
      L7_7 = string
      L7_7 = L7_7.find
      L7_7 = L7_7(L6_6, "%program_files%", 1, true)
    end
  elseif L7_7 ~= nil then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[1]
L7_7 = L7_7.matched
if L7_7 then
  L7_7 = this_sigattrlog
  L7_7 = L7_7[3]
  L7_7 = L7_7.matched
  if L7_7 then
    L7_7 = this_sigattrlog
    L7_7 = L7_7[5]
    L7_7 = L7_7.matched
    if L7_7 then
      L7_7 = this_sigattrlog
      L7_7 = L7_7[7]
      L7_7 = L7_7.matched
      if L7_7 then
        L7_7 = this_sigattrlog
        L7_7 = L7_7[9]
        L7_7 = L7_7.matched
        if L7_7 then
          L7_7 = this_sigattrlog
          L7_7 = L7_7[11]
          L7_7 = L7_7.matched
          if L7_7 then
            L7_7 = this_sigattrlog
            L7_7 = L7_7[13]
            L7_7 = L7_7.matched
            if L7_7 then
              L7_7 = this_sigattrlog
              L7_7 = L7_7[15]
              L7_7 = L7_7.matched
              if L7_7 then
                L7_7 = this_sigattrlog
                L7_7 = L7_7[17]
                L7_7 = L7_7.matched
                if L7_7 then
                  L7_7 = this_sigattrlog
                  L7_7 = L7_7[19]
                  L7_7 = L7_7.matched
                  if L7_7 then
                    L7_7 = this_sigattrlog
                    L7_7 = L7_7[21]
                    L7_7 = L7_7.matched
                    if L7_7 then
                      L7_7 = this_sigattrlog
                      L7_7 = L7_7[23]
                      L7_7 = L7_7.matched
                      if L7_7 then
                        L7_7 = this_sigattrlog
                        L7_7 = L7_7[25]
                        L7_7 = L7_7.matched
                        if L7_7 then
                          L7_7 = this_sigattrlog
                          L7_7 = L7_7[27]
                          L7_7 = L7_7.matched
                          if L7_7 then
                            L7_7 = this_sigattrlog
                            L7_7 = L7_7[29]
                            L7_7 = L7_7.matched
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
      end
    end
  end
end
if L7_7 == false then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = bm
L7_7 = L7_7.GetSignatureMatchDuration
L7_7 = L7_7()
if L7_7 > 50000000 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = this_sigattrlog
L7_7 = L7_7[1]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[1].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[3]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[3].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[5]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[5].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[7]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[7].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[9]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[9].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[11]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[11].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[13]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[13].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[15]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[15].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[17]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[17].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[19]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[19].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[21]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[21].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[23]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[23].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[25]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[25].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[27]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[27].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[29]
L7_7 = L7_7.wp1
if L7_7 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(this_sigattrlog[29].utf8p1)
  L0_0 = L7_7
  L7_7 = string
  L7_7 = L7_7.match
  L7_7 = L7_7(L0_0, "(%.[^%.]+)$")
  L1_1 = L7_7
  if L1_1 == ".exe" then
    L4_4 = L4_4 + 1
  elseif L1_1 ~= nil then
    L7_7 = L2_2[L1_1]
    if L7_7 == nil then
      L7_7 = L5_5[L1_1]
      if L7_7 == nil then
        L2_2[L1_1] = true
        L3_3 = L3_3 + 1
      end
    end
  end
end
if L3_3 >= 6 and L4_4 <= 2 then
  L7_7 = bm
  L7_7 = L7_7.get_imagepath
  L7_7 = L7_7()
  if not MpCommon.QueryPersistContext(L7_7, "RunsDestructiveCMDsParent") then
    return mp.INFECTED
  end
  if MpCommon.QueryPersistContext(L7_7, "RunsDestructiveCMDsParentBlock") then
    mp.ReportLowfi(L7_7, 481468239)
  end
  return mp.INFECTED
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
