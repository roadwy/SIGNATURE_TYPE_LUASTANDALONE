local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if not L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if not L0_0 then
        L0_0 = this_sigattrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if not L0_0 then
          L0_0 = this_sigattrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.matched
          if not L0_0 then
            L0_0 = this_sigattrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.matched
          end
        end
      end
    end
  end
elseif L0_0 then
  L0_0 = bm
  L0_0 = L0_0.get_process_relationships
  L1_1 = L0_0()
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = L6_6.image_path
    if L7_7 ~= nil then
      L7_7 = mp
      L7_7 = L7_7.bitand
      L8_8 = L6_6.reason_ex
      L7_7 = L7_7(L8_8, 1)
      L8_8 = string
      L8_8 = L8_8.lower
      L8_8 = L8_8(L6_6.image_path)
      if L7_7 == 1 and string.find(L8_8, "\\cloud drive mapper.exe", 1, true) or string.find(L8_8, "\\clouddrivemapper.exe", 1, true) or string.find(L8_8, "\\cmd.exe", 1, true) or string.find(L8_8, "\\teams.exe", 1, true) or string.find(L8_8, "\\browsercorebroker.exe", 1, true) or string.find(L8_8, "\\firefox.exe", 1, true) or string.find(L8_8, "\\explorer.exe", 1, true) or string.find(L8_8, "\\kato.exe", 1, true) or string.find(L8_8, "\\helixprojectsync.exe", 1, true) or string.find(L8_8, "\\electron.exe", 1, true) then
        return mp.CLEAN
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
