local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L5_5 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1())
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "(.+\\)([^\\]+)$"
L2_2 = L1_1(L2_2, L3_3)
if L2_2 == nil or L1_1 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L2_2
L3_3 = L2_2.len
L3_3 = L3_3(L4_4)
L5_5 = L1_1
L4_4 = L1_1.find
L4_4 = L4_4(L5_5, "\\appdata\\locallow\\{........%-....%-....%-....%-............}")
if L4_4 ~= nil then
  if L2_2 == "migsetup.exe" then
    L4_4 = mp
    L4_4 = L4_4.set_mpattribute
    L5_5 = "Lua:BedepFileName.A"
    L4_4(L5_5)
  elseif L2_2 == "cryptbase.dll" then
    L4_4 = mp
    L4_4 = L4_4.set_mpattribute
    L5_5 = "Lua:BedepFileName.B"
    L4_4(L5_5)
  else
    L4_4 = string
    L4_4 = L4_4.sub
    L5_5 = L2_2
    L4_4 = L4_4(L5_5, 1, 7)
    if L4_4 == "api-ms-" then
      L4_4 = mp
      L4_4 = L4_4.set_mpattribute
      L5_5 = "Lua:BedepFileName.C"
      L4_4(L5_5)
    end
  end
else
  L5_5 = L1_1
  L4_4 = L1_1.find
  L4_4 = L4_4(L5_5, "\\programdata\\{9a88e103-a20a-4ea5-8636-c73b709a5bf8}", 1, true)
  if L4_4 == nil then
    L5_5 = L1_1
    L4_4 = L1_1.find
    L4_4 = L4_4(L5_5, "\\programdata\\{f66cb4ee-546f-4d54-9332-216de189aab0}", 1, true)
    if L4_4 == nil then
      L5_5 = L1_1
      L4_4 = L1_1.find
      L4_4 = L4_4(L5_5, "\\programdata\\{698e0848-6d29-4305-80dc-e8d609260ce2}", 1, true)
      if L4_4 == nil then
        L5_5 = L1_1
        L4_4 = L1_1.find
        L4_4 = L4_4(L5_5, "\\programdata\\{49a0bac7-3326-4433-9373-4aa8793abb5c}", 1, true)
        if L4_4 == nil then
          L5_5 = L1_1
          L4_4 = L1_1.find
          L4_4 = L4_4(L5_5, "\\programdata\\{effc3e07-aed7-4c3c-992f-2c5eb14af4a8}", 1, true)
          if L4_4 == nil then
            L5_5 = L1_1
            L4_4 = L1_1.find
            L4_4 = L4_4(L5_5, "\\programdata\\{d9e629dc-cb1c-4a97-9900-81922b4effd4}", 1, true)
            if L4_4 == nil then
              L5_5 = L1_1
              L4_4 = L1_1.find
              L4_4 = L4_4(L5_5, "\\programdata\\{ca2facf7-9029-4a21-892b-e7f60b39ff1a}", 1, true)
              if L4_4 == nil then
                L5_5 = L1_1
                L4_4 = L1_1.find
                L4_4 = L4_4(L5_5, "\\programdata\\{4ba6ab29-2eab-46fc-8b33-a767b5dbb0f3}", 1, true)
                if L4_4 == nil then
                  L5_5 = L1_1
                  L4_4 = L1_1.find
                  L4_4 = L4_4(L5_5, "\\application data\\{4d03d701-c800-49f0-8590-127eff2877ff}", 1, true)
                  if L4_4 == nil then
                    L5_5 = L1_1
                    L4_4 = L1_1.find
                    L4_4 = L4_4(L5_5, "\\programdata\\{9b82496a-c211-4fcf-84b5-e2b3a1d99f8f}", 1, true)
                    if L4_4 == nil then
                      L5_5 = L1_1
                      L4_4 = L1_1.find
                      L4_4 = L4_4(L5_5, "\\programdata\\{d93bcbeb-07b6-4fa0-86bf-5552dfc4404c}", 1, true)
                      if L4_4 == nil then
                        L5_5 = L1_1
                        L4_4 = L1_1.find
                        L4_4 = L4_4(L5_5, "\\programdata\\{65ee3202-cce0-4ec4-9369-0a126e1da09c}", 1, true)
                        if L4_4 == nil then
                          L5_5 = L1_1
                          L4_4 = L1_1.find
                          L4_4 = L4_4(L5_5, "\\programdata\\{b7a719fb-068f-41ad-8261-3569c22edec2}", 1, true)
                          if L4_4 == nil then
                            L5_5 = L1_1
                            L4_4 = L1_1.find
                            L4_4 = L4_4(L5_5, "\\programdata\\{18067bd7-3c56-4e2e-8627-51ee9adc5a30}", 1, true)
                            if L4_4 == nil then
                              L5_5 = L1_1
                              L4_4 = L1_1.find
                              L4_4 = L4_4(L5_5, "\\programdata\\{1016e27d-c6ce-4668-9211-5ec18caadbf8}", 1, true)
                              if L4_4 == nil then
                                L5_5 = L1_1
                                L4_4 = L1_1.find
                                L4_4 = L4_4(L5_5, "\\programdata\\{39567fd8-2a86-4514-8b0a-406c6e60a8bb}", 1, true)
                                if L4_4 == nil then
                                  L5_5 = L1_1
                                  L4_4 = L1_1.find
                                  L4_4 = L4_4(L5_5, "\\programdata\\{9925001e-4d97-434f-8579-2e06af34678f}", 1, true)
                                  if L4_4 == nil then
                                    L5_5 = L1_1
                                    L4_4 = L1_1.find
                                    L4_4 = L4_4(L5_5, "\\programdata\\{0bf6ab17-0058-462c-8274-0655b925c812}", 1, true)
                                    if L4_4 == nil then
                                      L5_5 = L1_1
                                      L4_4 = L1_1.find
                                      L4_4 = L4_4(L5_5, "\\programdata\\{a4682c3b-ab83-49b3-8eb5-b44e3f044b59}", 1, true)
                                      if L4_4 == nil then
                                        L5_5 = L1_1
                                        L4_4 = L1_1.find
                                        L4_4 = L4_4(L5_5, "\\programdata\\{0a41da87-d172-4c26-9422-d2c4f5549861}", 1, true)
                                        if L4_4 == nil then
                                          L5_5 = L1_1
                                          L4_4 = L1_1.find
                                          L4_4 = L4_4(L5_5, "\\programdata\\{2cd18189-70a0-4ae9-899e-05bad272e52e}", 1, true)
                                          if L4_4 == nil then
                                            L5_5 = L1_1
                                            L4_4 = L1_1.find
                                            L4_4 = L4_4(L5_5, "\\programdata\\{33896b39-667b-48e5-8c29-b02174b09d04}", 1, true)
                                            if L4_4 == nil then
                                              L5_5 = L1_1
                                              L4_4 = L1_1.find
                                              L4_4 = L4_4(L5_5, "\\programdata\\{2f752dac-f812-4497-9e91-d8701a4745cb}", 1, true)
                                              if L4_4 == nil then
                                                L5_5 = L1_1
                                                L4_4 = L1_1.find
                                                L4_4 = L4_4(L5_5, "\\programdata\\{9cad18b2-ff9b-4cca-8ee0-a4cda3ad5f51}", 1, true)
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
  else
    if L4_4 ~= nil then
      if L3_3 > 4 then
        L4_4 = string
        L4_4 = L4_4.sub
        L5_5 = L2_2
        L4_4 = L4_4(L5_5, -4)
        if L4_4 == ".dll" then
          L4_4 = mp
          L4_4 = L4_4.set_mpattribute
          L5_5 = "Lua:BedepFileName.D"
          L4_4(L5_5)
        end
      end
  end
  else
    L5_5 = L1_1
    L4_4 = L1_1.find
    L4_4 = L4_4(L5_5, "\\programdata\\{........%-....%-....%-....%-............}\\$")
    if L4_4 ~= nil and L3_3 > 4 then
      L4_4 = string
      L4_4 = L4_4.sub
      L5_5 = L2_2
      L4_4 = L4_4(L5_5, -4)
      if L4_4 == ".dll" then
        L4_4 = pcall
        L5_5 = mp
        L5_5 = L5_5.get_parent_filehandle
        L5_5 = L4_4(L5_5)
        if L4_4 then
          L4_4, _ = pcall(mp.get_filesize_by_handle, L5_5)
        end
        if not L4_4 then
          mp.set_mpattribute("Lua:BedepFileName.E")
        end
      end
    end
  end
end
if L2_2 == "spinstall.exewdscore.dll" then
  L4_4 = mp
  L4_4 = L4_4.set_mpattribute
  L5_5 = "Lua:BedepFileName.F"
  L4_4(L5_5)
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
