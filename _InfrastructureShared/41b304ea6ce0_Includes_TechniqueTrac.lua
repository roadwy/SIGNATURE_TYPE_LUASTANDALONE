local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = "remote_file_created_taint"
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6
}
L2_2 = {L3_3, L4_4}
L3_3 = "/bin/python"
L4_4 = "/bin/pip"
L3_3 = {L4_4, L5_5}
L4_4 = "/bin/python"
L4_4 = {L5_5, L6_6}
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L2_2 = L3_3.utf8p1
end
if L2_2 ~= nil then
  L3_3 = bm
  L3_3 = L3_3.get_current_process_startup_info
  L3_3 = L3_3()
  L4_4 = bm
  L4_4 = L4_4.get_imagepath
  L4_4 = L4_4()
  if L3_3 ~= nil then
    if L5_5 ~= nil and L4_4 ~= nil then
      if L5_5 ~= nil then
        for L8_8, L9_9 in L5_5(L6_6) do
          L10_10 = L9_9[1]
          L11_11 = L9_9[2]
          if string.find(L4_4, L10_10, 1, true) and string.find(L3_3.command_line, L11_11, 1, true) then
            return mp.CLEAN
          end
        end
        L5_5(L6_6, L7_7, L8_8)
        L5_5(L6_6, L7_7, L8_8)
        L5_5(L6_6, L7_7, L8_8, L9_9)
        for L10_10, L11_11 in L7_7(L8_8) do
          bm.add_related_process(L11_11.ppid)
          TrackPidAndTechniqueBM(L11_11.ppid, "T1105", "CommandAndControl")
        end
        return L7_7
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
