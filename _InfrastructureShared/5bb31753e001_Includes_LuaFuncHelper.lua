local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 then
  L2_2 = L1_1.command_line
elseif not L2_2 or not L0_0 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = StringEndsWith
L3_3 = L0_0
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = StringEndsWith
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, L4_4)
  if not L2_2 then
    L2_2 = StringEndsWith
    L3_3 = L0_0
    L2_2 = L2_2(L3_3, L4_4)
    if not L2_2 then
      L2_2 = StringEndsWith
      L3_3 = L0_0
      L2_2 = L2_2(L3_3, L4_4)
      if not L2_2 then
        L2_2 = StringEndsWith
        L3_3 = L0_0
        L2_2 = L2_2(L3_3, L4_4)
        if not L2_2 then
          L2_2 = string
          L2_2 = L2_2.find
          L3_3 = L0_0
          L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
          if not L2_2 then
            L2_2 = StringEndsWith
            L3_3 = L0_0
            L2_2 = L2_2(L3_3, L4_4)
            if not L2_2 then
              L2_2 = StringEndsWith
              L3_3 = L0_0
              L2_2 = L2_2(L3_3, L4_4)
              if not L2_2 then
                L2_2 = StringEndsWith
                L3_3 = L0_0
                L2_2 = L2_2(L3_3, L4_4)
                if not L2_2 then
                  L2_2 = StringEndsWith
                  L3_3 = L0_0
                  L2_2 = L2_2(L3_3, L4_4)
                end
              end
            end
          end
        end
      end
    end
  end
elseif L2_2 then
  L2_2 = L1_1.command_line
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  if L3_3 then
    for L7_7, L8_8 in L4_4(L5_5) do
      if sysio.IsFileExists(L8_8) then
        bm.add_related_file(L8_8)
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
