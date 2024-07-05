local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L2_2 = L0_0
L1_1 = L0_0.len
L1_1 = L1_1(L2_2)
L2_2 = false
if L1_1 > 16 then
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L0_0
  L3_3 = L3_3(L4_4, -16)
else
  if L3_3 ~= "->Enter 1234.txt" then
    if L1_1 > 14 then
      L3_3 = string
      L3_3 = L3_3.sub
      L4_4 = L0_0
      L3_3 = L3_3(L4_4, -14)
    elseif L3_3 ~= "->Use_1234.txt" then
      if L1_1 > 14 then
        L3_3 = string
        L3_3 = L3_3.sub
        L4_4 = L0_0
        L3_3 = L3_3(L4_4, -14)
      elseif L3_3 ~= "->Use 1234.txt" then
        if L1_1 > 26 then
          L3_3 = string
          L3_3 = L3_3.sub
          L4_4 = L0_0
          L3_3 = L3_3(L4_4, -26)
        elseif L3_3 ~= "->USE PASSWORD - 12345.txt" then
          if L1_1 > 17 then
            L3_3 = string
            L3_3 = L3_3.sub
            L4_4 = L0_0
            L3_3 = L3_3(L4_4, -17)
          elseif L3_3 ~= "->Use 1 2 3 4.txt" then
            if L1_1 > 21 then
              L3_3 = string
              L3_3 = L3_3.sub
              L4_4 = L0_0
              L3_3 = L3_3(L4_4, -21)
            elseif L3_3 ~= "->Password = 1234.txt" then
              if L1_1 > 23 then
                L3_3 = string
                L3_3 = L3_3.sub
                L4_4 = L0_0
                L3_3 = L3_3(L4_4, -23)
              elseif L3_3 ~= "->you should write 1234" then
                if L1_1 > 32 then
                  L3_3 = string
                  L3_3 = L3_3.sub
                  L4_4 = L0_0
                  L3_3 = L3_3(L4_4, -32)
                elseif L3_3 ~= "->1234 is what should be written" then
                  if L1_1 > 13 then
                    L3_3 = string
                    L3_3 = L3_3.sub
                    L4_4 = L0_0
                    L3_3 = L3_3(L4_4, -13)
                  elseif L3_3 ~= "->key is 1234" then
                    if L1_1 > 18 then
                      L3_3 = string
                      L3_3 = L3_3.sub
                      L4_4 = L0_0
                      L3_3 = L3_3(L4_4, -18)
                    elseif L3_3 ~= "->1234 for opening" then
                      if L1_1 > 15 then
                        L3_3 = string
                        L3_3 = L3_3.sub
                        L4_4 = L0_0
                        L3_3 = L3_3(L4_4, -15)
                      elseif L3_3 ~= "->to unzip 1234" then
                        if L1_1 > 21 then
                          L3_3 = string
                          L3_3 = L3_3.sub
                          L4_4 = L0_0
                          L3_3 = L3_3(L4_4, -21)
                        elseif L3_3 ~= "->1234 for extracting" then
                          if L1_1 > 13 then
                            L3_3 = string
                            L3_3 = L3_3.sub
                            L4_4 = L0_0
                            L3_3 = L3_3(L4_4, -13)
                          elseif L3_3 ~= "->to run 1234" then
                            if L1_1 > 24 then
                              L3_3 = string
                              L3_3 = L3_3.sub
                              L4_4 = L0_0
                              L3_3 = L3_3(L4_4, -24)
                            elseif L3_3 ~= "->Password is-  1234.txt" then
                              if L1_1 > 25 then
                                L3_3 = string
                                L3_3 = L3_3.sub
                                L4_4 = L0_0
                                L3_3 = L3_3(L4_4, -25)
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
end
elseif L3_3 == "->Password is -  1234.txt" then
  L2_2 = true
end
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_parent_filehandle
L3_3 = L3_3()
L4_4 = mp
L4_4 = L4_4.is_handle_nil
L4_4 = L4_4(L3_3)
if L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readprotection
L4_4(false)
L4_4 = mp
L4_4 = L4_4.readfile_by_handle
L4_4 = L4_4(L3_3, 0, 6)
if L4_4 == "7z\188\175'\028" or L4_4 == "Rar!\026\a" or mp.readu_u32(L4_4, 1) == 67324752 then
  return mp.INFECTED
end
return mp.CLEAN
