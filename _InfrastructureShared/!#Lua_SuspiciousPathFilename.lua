local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L4_4 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1())
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "(.+\\)([^\\]+)$"
L2_2 = L1_1(L2_2, L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 == "svchost.exe" or L2_2 == "csrss.exe" or L2_2 == "rundll32.exe" or L2_2 == "lsass.exe" or L2_2 == "services.exe" or L2_2 == "cryptbase.dll" or L2_2 == "migsetup.exe" then
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, -18)
  if L3_3 ~= "\\windows\\system32\\" and L3_3 ~= "\\windows\\syswow64\\" then
    L4_4 = L1_1.find
    L4_4 = L4_4(L1_1, "\\windows\\winsxs\\", 1, true)
    if L4_4 == nil then
      L4_4 = string
      L4_4 = L4_4.sub
      L4_4 = L4_4(L1_1, -19)
      if L4_4 ~= "\\system32\\dllcache\\" then
        L4_4 = string
        L4_4 = L4_4.sub
        L4_4 = L4_4(L1_1, -38)
        if L4_4 ~= "\\malwarebytes' anti-malware\\chameleon\\" then
          L4_4 = string
          L4_4 = L4_4.sub
          L4_4 = L4_4(L1_1, -13)
          if L4_4 ~= "\\system32\\pw\\" then
            L4_4 = string
            L4_4 = L4_4.sub
            L4_4 = L4_4(L1_1, -15)
            if L4_4 ~= "\\system32\\1052\\" then
              L4_4 = string
              L4_4 = L4_4.sub
              L4_4 = L4_4(L1_1, -6)
              if L4_4 ~= "\\i386\\" then
                L4_4 = string
                L4_4 = L4_4.sub
                L4_4 = L4_4(L1_1, -16)
                if L4_4 ~= "\\winnt\\system32\\" then
                  L4_4 = string
                  L4_4 = L4_4.sub
                  L4_4 = L4_4(L1_1, -12)
                  if L4_4 ~= "\\winnt\\i386\\" then
                    L4_4 = L1_1.find
                    L4_4 = L4_4(L1_1, "\\$ntservicepackuninstall$\\", 1, true)
                    if L4_4 == nil then
                      L4_4 = L1_1.find
                      L4_4 = L4_4(L1_1, "\\Installer\\$PatchCache$\\", 1, true)
                      if L4_4 == nil then
                        L4_4 = L1_1.find
                        L4_4 = L4_4(L1_1, "\\windows\\$ntuninstall", 1, true)
                        if L4_4 == nil then
                          L4_4 = L1_1.find
                          L4_4 = L4_4(L1_1, "\\windows\\$hf_mig$\\", 1, true)
                          if L4_4 == nil then
                            L4_4 = L1_1.find
                            L4_4 = L4_4(L1_1, "\\softwaredistribution\\download\\", 1, true)
                            if L4_4 == nil then
                              L4_4 = L1_1.find
                              L4_4 = L4_4(L1_1, "symbols\\", 1, true)
                              if L4_4 == nil then
                                L4_4 = L1_1.find
                                L4_4 = L4_4(L1_1, "\\debuggers\\", 1, true)
                                if L4_4 == nil then
                                  L4_4 = L1_1.find
                                  L4_4 = L4_4(L1_1, "\\debugger\\", 1, true)
                                  if L4_4 == nil then
                                    L4_4 = L1_1.find
                                    L4_4 = L4_4(L1_1, "\\hotfixes\\", 1, true)
                                    if L4_4 == nil then
                                      L4_4 = L1_1.find
                                      L4_4 = L4_4(L1_1, "\\symbol\\", 1, true)
                                      if L4_4 == nil then
                                        L4_4 = L1_1.find
                                        L4_4 = L4_4(L1_1, "\\device\\mup", 1, true)
                                        if L4_4 == nil then
                                          L4_4 = string
                                          L4_4 = L4_4.sub
                                          L4_4 = L4_4(L1_1, -17)
                                          if L4_4 ~= "\\system32\\migwiz\\" then
                                            L4_4 = mp
                                            L4_4 = L4_4.get_parent_filehandle
                                            L4_4 = L4_4()
                                            if pcall(mp.get_filesize_by_handle, L4_4) == false then
                                              mp.set_mpattribute("Lua:SuspiciousPathFilename.A")
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
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
