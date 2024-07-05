local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = versioning
L0_0 = L0_0.GetOrgID
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if L1_1 == "40222833-e511-47af-9324-40c4531ba777" or L1_1 == "824183b0-2389-4601-a78d-1bda0b1327aa" or L1_1 == "5f498185-96bf-44f6-a553-5c9359b1e96f" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
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
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L1_1 = L2_2.utf8p2
    end
  else
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
        L1_1 = L2_2.utf8p2
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
          L1_1 = L2_2.utf8p2
        end
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[5]
          L2_2 = L2_2.utf8p2
          if L2_2 ~= nil then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[5]
            L1_1 = L2_2.utf8p2
          end
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[6]
            L2_2 = L2_2.utf8p2
            if L2_2 ~= nil then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[6]
              L1_1 = L2_2.utf8p2
            end
          end
        end
      end
    end
  end
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L2_2[".jse"] = true
L2_2[".vbe"] = true
L3_3 = mp
L3_3 = L3_3.GetExecutablesFromCommandLine
L3_3 = L3_3(L4_4)
for L7_7, L8_8 in L4_4(L5_5) do
  if 4 < string.len(L8_8) and sysio.IsFileExists(L8_8) and L2_2[string.sub(L8_8, -4)] then
    if string.find(string.lower(L8_8), "themefonts-colors_installer.vbe", 1, true) then
      return mp.CLEAN
    end
    if mp.IsKnownFriendlyFile(L8_8, true, true) == nil or mp.IsKnownFriendlyFile(L8_8, true, true) == true then
      return mp.CLEAN
    end
    bm.add_threat_file(L8_8)
  end
end
return L4_4
