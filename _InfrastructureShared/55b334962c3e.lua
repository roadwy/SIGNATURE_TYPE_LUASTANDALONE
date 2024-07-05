local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L1_1 = L2_2.utf8p1
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L0_0 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L1_1 = L2_2.utf8p1
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L0_0 = L2_2.utf8p2
    end
  end
end
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = string
  L4_4 = L4_4.sub
  L9_9 = L4_4(L5_5, L6_6)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L4_4(L5_5, L6_6))
  L2_2 = L3_3
  if L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L2_2
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
  end
end
if L1_1 then
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = string
  L4_4 = L4_4.sub
  L9_9 = L4_4(L5_5, L6_6)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L4_4(L5_5, L6_6))
  if L3_3 == "dll" then
    if L0_0 then
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = string
      L4_4 = L4_4.match
      L9_9 = L4_4(L5_5, L6_6)
      L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L4_4(L5_5, L6_6))
      if L3_3 ~= nil then
        L4_4 = {}
        L4_4["xapauthenticodesip.dll"] = "\\microsoft silverlight\\"
        L4_4["wintrust.dll"] = "\\windows\\system32\\"
        L4_4["wshext.dll"] = "\\windows\\system32\\"
        L4_4["iiscertprovider.dll"] = "\\windows\\system32\\"
        L4_4["emet_ce64.dll"] = "\\program files\\emet"
        L4_4["emet_ce.dll"] = "\\program files\\emet"
        L4_4["mscorsecimpl.dll"] = "\\windows\\microsoft.net\\framework"
        L4_4["mcps.dll"] = "\\office1"
        if L5_5 ~= nil then
          if L6_6 ~= nil then
            L8_8 = L6_6
            if L6_6 ~= nil then
              L8_8 = L6_6
              L9_9 = L5_5
              if L7_7 then
                return L7_7
              end
            end
          end
        end
      end
      L4_4 = mp
      L4_4 = L4_4.GetExecutablesFromCommandLine
      L4_4 = L4_4(L5_5)
      for L8_8, L9_9 in L5_5(L6_6) do
        L9_9 = mp.ContextualExpandEnvironmentVariables(L9_9)
        if sysio.IsFileExists(L9_9) then
          bm.add_related_file(L9_9)
        end
      end
    end
    L3_3 = mp
    L3_3 = L3_3.INFECTED
    return L3_3
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
