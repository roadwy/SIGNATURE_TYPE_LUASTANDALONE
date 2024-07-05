local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "\\([^\\]+)$"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= "services.exe" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
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
    L2_2 = L3_3.utf8p2
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
      L2_2 = L3_3.utf8p2
    end
  end
end
if L2_2 ~= nil and L2_2 ~= "" then
  L3_3 = mp
  L3_3 = L3_3.IsKnownFriendlyFile
  L3_3 = L3_3(L4_4, L5_5, L6_6)
elseif L3_3 == true then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2.find
L3_3 = L3_3(L4_4, L5_5, L6_6)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
else
  L3_3 = L2_2.find
  L7_7 = true
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  else
    L3_3 = L2_2.find
    L7_7 = true
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    else
      L3_3 = L2_2.find
      L7_7 = true
      L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
      if L3_3 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      else
        L3_3 = L2_2.find
        L7_7 = true
        L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
        if L3_3 then
          L3_3 = mp
          L3_3 = L3_3.CLEAN
          return L3_3
        else
          L3_3 = L2_2.find
          L7_7 = true
          L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
          if L3_3 then
            L3_3 = mp
            L3_3 = L3_3.CLEAN
            return L3_3
          end
        end
      end
    end
  end
end
L3_3 = sysio
L3_3 = L3_3.IsFileExists
L3_3 = L3_3(L4_4)
if L3_3 then
  L3_3 = bm
  L3_3 = L3_3.add_related_file
  L3_3(L4_4)
end
L3_3 = MpCommon
L3_3 = L3_3.GetPersistContextNoPath
L3_3 = L3_3(L4_4)
if L3_3 then
  for L7_7, L8_8 in L4_4(L5_5) do
    if sysio.IsFileExists(L8_8) then
      bm.add_related_file(L8_8)
    end
  end
end
return L4_4
