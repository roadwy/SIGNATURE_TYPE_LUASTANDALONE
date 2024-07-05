local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L1_1 = "|.js|jse|vbs|vbe|"
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
    L0_0 = L2_2.utf8p2
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
      L0_0 = L2_2.utf8p2
    end
  end
end
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetExecutablesFromCommandLine
L2_2 = L2_2(L3_3)
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = sysio
  L8_8 = L8_8.IsFileExists
  L9_9 = L7_7
  L8_8 = L8_8(L9_9)
  if L8_8 then
    L8_8 = string
    L8_8 = L8_8.lower
    L9_9 = string
    L9_9 = L9_9.sub
    L10_10 = L7_7
    L10_10 = L9_9(L10_10, -3)
    L8_8 = L8_8(L9_9, L10_10, L9_9(L10_10, -3))
    L9_9 = string
    L9_9 = L9_9.find
    L10_10 = L1_1
    L9_9 = L9_9(L10_10, L8_8, 1, true)
    if L9_9 then
      L9_9 = mp
      L9_9 = L9_9.GetMotwReferrerUrlForFile
      L10_10 = L7_7
      L10_10 = L9_9(L10_10)
      if not L9_9 then
        return mp.CLEAN
      end
      if not L10_10 or StringStartsWith(L10_10, "http") or StringStartsWith(L10_10, "www") then
        return mp.CLEAN
      end
      if sysio.IsFileExists(L10_10) then
        bm.add_related_file(L10_10)
        if mp.GetMotwHostUrlForFile(L10_10) and mp.GetMotwHostUrlForFile(L10_10) then
          return mp.INFECTED
        end
      end
    end
  end
end
return L3_3
