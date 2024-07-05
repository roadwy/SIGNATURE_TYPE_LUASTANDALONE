local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
function L0_0(A0_8)
  local L1_9
  L1_9 = peattributes
  L1_9 = L1_9[A0_8]
  if L1_9 then
    L1_9 = true
    return L1_9
  end
  L1_9 = false
  return L1_9
end
CheckPEAttribute = L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_FILENAME
    L1_1 = L1_1(L2_2)
    if L1_1 ~= nil then
      L2_2 = #L1_1
    elseif L2_2 < 1 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    L3_3 = {}
    L3_3[".dll"] = ""
    L3_3[".exe"] = ""
    L3_3[".scr"] = ""
    L3_3[".dat"] = ""
    L4_4 = CheckPEAttribute
    L5_5 = "isexe"
    L4_4 = L4_4(L5_5)
    if not L4_4 then
      L4_4 = CheckPEAttribute
      L5_5 = "isdll"
      L4_4 = L4_4(L5_5)
    elseif L4_4 then
      L5_5 = L2_2
      L4_4 = L2_2.sub
      L6_6 = -4
      L4_4 = L4_4(L5_5, L6_6)
      L4_4 = L3_3[L4_4]
      if L4_4 then
        L4_4 = mp
        L4_4 = L4_4.get_contextdata
        L5_5 = mp
        L5_5 = L5_5.CONTEXT_DATA_FILEPATH
        L4_4 = L4_4(L5_5)
        if L4_4 ~= nil then
          L5_5 = #L4_4
        elseif L5_5 < 1 then
          L5_5 = mp
          L5_5 = L5_5.CLEAN
          return L5_5
        end
        L5_5 = MpCommon
        L5_5 = L5_5.PathToWin32Path
        L6_6 = L4_4
        L5_5 = L5_5(L6_6)
        if L5_5 ~= nil then
          L6_6 = #L5_5
        elseif L6_6 < 1 then
          L6_6 = mp
          L6_6 = L6_6.CLEAN
          return L6_6
        end
        L6_6 = string
        L6_6 = L6_6.lower
        L7_7 = L5_5
        L6_6 = L6_6(L7_7)
        L7_7 = L6_6.sub
        L7_7 = L7_7(L6_6, -42)
        if L7_7 ~= "\\local settings\\application data\\microsoft" then
          L7_7 = L6_6.sub
          L7_7 = L7_7(L6_6, -17)
          if L7_7 ~= "\\application data" then
            L7_7 = L6_6.sub
            L7_7 = L7_7(L6_6, -14)
            if L7_7 ~= "\\appdata\\local" then
              L7_7 = L6_6.sub
              L7_7 = L7_7(L6_6, -16)
              if L7_7 ~= "\\appdata\\roaming" then
                L7_7 = L6_6.sub
                L7_7 = L7_7(L6_6, -9)
                if L7_7 ~= "\\system32" then
                  L7_7 = L6_6.sub
                  L7_7 = L7_7(L6_6, 2)
                  if L7_7 ~= ":\\windows" then
                    L7_7 = L6_6.sub
                    L7_7 = L7_7(L6_6, 2)
                    if L7_7 ~= ":\\windir" then
                      L7_7 = L6_6.sub
                      L7_7 = L7_7(L6_6, -11)
                      if L7_7 ~= "\\start menu" then
                        L7_7 = L6_6.sub
                        L7_7 = L7_7(L6_6, -27)
                        if L7_7 ~= "\\program files\\common files" then
                          L7_7 = L6_6.sub
                          L7_7 = L7_7(L6_6, 2)
                          if L7_7 ~= ":\\documents and settings\\all users\\start menu" then
                            L7_7 = L6_6.sub
                            L7_7 = L7_7(L6_6, 2)
                            if L7_7 ~= ":\\programdata\\microsoft\\windows\\start menu" then
                              L7_7 = L6_6.sub
                              L7_7 = L7_7(L6_6, 2)
                              if L7_7 ~= ":\\programdata\\microsoft\\windows\\start menu\\programs" then
                                L7_7 = L6_6.sub
                                L7_7 = L7_7(L6_6, 2)
                                if L7_7 ~= ":\\programdata\\microsoft\\windows\\start menu\\programs\\startup" then
                                  L7_7 = L6_6.sub
                                  L7_7 = L7_7(L6_6, 2)
                                  if L7_7 ~= ":\\documents and settings\\all users\\start menu\\programs" then
                                    L7_7 = L6_6.sub
                                    L7_7 = L7_7(L6_6, 2)
                                    if L7_7 ~= ":\\documents and settings\\all users\\start menu\\programs\\startup" then
                                      L7_7 = L6_6.sub
                                      L7_7 = L7_7(L6_6, 2)
                                      if L7_7 ~= ":\\program files (x86)\\common files" then
                                        L7_7 = L6_6.sub
                                        L7_7 = L7_7(L6_6, -26)
                                        if L7_7 ~= "\\appdata\\roaming\\microsoft" then
                                          L7_7 = L6_6.sub
                                          L7_7 = L7_7(L6_6, -5)
                                          if L7_7 ~= "\\temp" then
                                            L7_7 = L6_6.sub
                                            L7_7 = L7_7(L6_6, 2)
                                            if L7_7 ~= ":\\program files\\common files" then
                                              L7_7 = L6_6.sub
                                              L7_7 = L7_7(L6_6, 2)
                                              if L7_7 ~= ":\\programdata" then
                                                L7_7 = L6_6.sub
                                                L7_7 = L7_7(L6_6, -27)
                                                if L7_7 ~= "\\appdata\\roaming\\identities" then
                                                  L7_7 = L6_6.sub
                                                  L7_7 = L7_7(L6_6, -28)
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
                  end
                end
              end
            end
          end
        elseif L7_7 == "\\application data\\identities" then
          L7_7 = mp
          L7_7 = L7_7.get_contextdata
          L7_7 = L7_7(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
          if L7_7 ~= 4294967295 then
            L7_7 = mp.bitand(L7_7, 3)
            if L7_7 == 3 then
              mp.set_mpattribute("Lua:SuspiciousDropExeAttrib.A")
            elseif L7_7 ~= 0 then
              mp.set_mpattribute("Lua:SuspiciousDropExeAttrib.B")
            end
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
