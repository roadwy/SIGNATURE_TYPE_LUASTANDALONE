local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L2_2 = "remote_file_created_taint"
L3_3 = {
  L4_4,
  L5_5,
  L6_6,
  L7_7
}
L4_4 = {L5_5, L6_6}
L5_5 = "/bin/python"
L5_5 = {L6_6, L7_7}
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L1_1 = L4_4.utf8p1
else
  L4_4 = this_sigattrlog
  L4_4 = L4_4[3]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[3]
    L1_1 = L4_4.utf8p1
  else
    L4_4 = this_sigattrlog
    L4_4 = L4_4[4]
    L4_4 = L4_4.matched
    if L4_4 then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[4]
      L1_1 = L4_4.utf8p1
    else
      L4_4 = this_sigattrlog
      L4_4 = L4_4[6]
      L4_4 = L4_4.matched
      if L4_4 then
        L4_4 = this_sigattrlog
        L4_4 = L4_4[6]
        L1_1 = L4_4.utf8p1
      else
        L4_4 = this_sigattrlog
        L4_4 = L4_4[5]
        L4_4 = L4_4.matched
        if L4_4 then
          L4_4 = this_sigattrlog
          L4_4 = L4_4[5]
          L1_1 = L4_4.utf8p1
        else
          L4_4 = this_sigattrlog
          L4_4 = L4_4[7]
          L4_4 = L4_4.matched
          if L4_4 then
            L4_4 = this_sigattrlog
            L4_4 = L4_4[7]
            L1_1 = L4_4.utf8p1
          end
        end
      end
    end
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[9]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[9]
  L0_0 = L4_4.utf8p1
end
if L1_1 ~= nil and L0_0 ~= nil then
  L4_4 = isTainted
  L5_5 = L1_1
  L4_4 = L4_4(L5_5, L6_6)
  if L4_4 then
    L4_4 = bm
    L4_4 = L4_4.get_current_process_startup_info
    L4_4 = L4_4()
    L5_5 = bm
    L5_5 = L5_5.get_imagepath
    L5_5 = L5_5()
    if L4_4 ~= nil then
      if L6_6 ~= nil and L5_5 ~= nil then
        if L6_6 ~= nil then
          for L9_9, L10_10 in L6_6(L7_7) do
            L11_11 = L10_10[1]
            L12_12 = L10_10[2]
            if string.find(L5_5, L11_11, 1, true) and string.find(L4_4.command_line, L12_12, 1, true) then
              return mp.CLEAN
            end
          end
          L6_6(L7_7, L8_8, L9_9)
          L6_6(L7_7, L8_8, L9_9)
          L6_6(L7_7, L8_8, L9_9, L10_10)
          for L11_11, L12_12 in L8_8(L9_9) do
            bm.add_related_process(L12_12.ppid)
            TrackPidAndTechniqueBM(L12_12.ppid, "T1105", "CommandAndControl")
          end
          return L8_8
        end
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
