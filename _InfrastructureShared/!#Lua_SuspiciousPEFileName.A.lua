local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L21_21 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L1_1())
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "(.+\\)([^\\]+)$"
L2_2 = L1_1(L2_2, L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L2_2
L3_3 = L2_2.len
L3_3 = L3_3(L4_4)
L4_4 = false
L5_5 = false
L6_6 = false
L7_7 = false
L8_8 = false
L9_9 = false
L10_10 = false
L11_11 = false
L12_12 = false
L13_13 = true
if L2_2 == "kperra.exe" or L2_2 == "sys_drivere.exe" or L2_2 == "sys_drive.exe" or L2_2 == "sys_drivepp.exe" or L2_2 == "ntfs_clean.exe" or L2_2 == "ntfs_cleanf.exe" or L2_2 == "ms_cleanerre.exe" or L2_2 == "ms_cleaner.exe" or L2_2 == "wiupdat.exe" or L2_2 == "vbupdat.exe" or L2_2 == "wcrash.exe" or L2_2 == "obupdat.exe" or L2_2 == "pterra.exe" or L2_2 == "tierra.exe" or L2_2 == "stuprt.exe" or L2_2 == "syserrfix.exe" or L2_2 == "diskfix.exe" or L2_2 == "dumpfix.exe" or L2_2 == "bvtray.exe" or L2_2 == "repfix.exe" or L2_2 == "fixutil.exe" or L2_2 == "urepair.exe" or L2_2 == "errfix.exe" or L2_2 == "anwres.exe" or L2_2 == "hptcpu.exe" or L2_2 == "sysdfg.exe" or L2_2 == "diskchk.exe" or L2_2 == "sysrestore.exe" or L2_2 == "aptcpu.exe" or L2_2 == "apucpu.exe" or L2_2 == "defsrag.exe" or L2_2 == "diskswtool.exe" or L2_2 == "dissdkchk.exe" then
  L4_4 = true
elseif L2_2 == "commandre.exe" or L2_2 == "wifi-cfg.exe" or L2_2 == "wifi-cfgf.exe" or L2_2 == "restor.exe" or L2_2 == "mornef0.exe" or L2_2 == "video player.com" or L2_2 == "mondarf0.exe" or L2_2 == "svchostre.exe" then
  L9_9 = true
elseif L2_2 == "video player.exe" then
  L14_14 = mp
  L14_14 = L14_14.set_mpattribute
  L15_15 = "Lua:SuspiciousPEFileName.B"
  L14_14(L15_15)
elseif L2_2 == "wiupdate.exe" or L2_2 == "fixtool.exe" or L2_2 == "conhost.exe" or L2_2 == "shell32.dll" or L2_2 == "dwtray.exe" or L2_2 == "defrag.exe" or L2_2 == "disktool.exe" or L2_2 == "systemrestore.exe" then
  L4_4 = true
  L10_10 = true
elseif L2_2 == "fvjcrgr0.exe" or L2_2 == "setup0.exe" then
  L5_5 = true
elseif L2_2 == "tmp1.log" or L2_2 == "tmpe.log" then
  L4_4 = true
  L6_6 = true
elseif L2_2 == "msiexec.exe" then
  L15_15 = L1_1
  L14_14 = L1_1.find
  L16_16 = "\\windows genuine advantage\\{"
  L17_17 = 1
  L18_18 = true
  L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
  if L14_14 == nil then
    L15_15 = L1_1
    L14_14 = L1_1.find
    L16_16 = "\\windows\\installer\\{"
    L17_17 = 1
    L18_18 = true
    L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
  elseif L14_14 ~= nil then
    L7_7 = true
  end
elseif L2_2 == "cryptbase.dll" then
  L15_15 = L1_1
  L14_14 = L1_1.find
  L16_16 = "\\appdata\\locallow\\{"
  L17_17 = 1
  L18_18 = true
  L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
  if L14_14 ~= nil then
    L4_4 = true
  end
elseif L2_2 == "errcntrl.exe" or L2_2 == "xzhian.exe" then
  L4_4 = true
  L11_11 = true
else
  L14_14 = string
  L14_14 = L14_14.sub
  L15_15 = L2_2
  L16_16 = -4
  L14_14 = L14_14(L15_15, L16_16)
  if L14_14 ~= ".exe" then
    L14_14 = string
    L14_14 = L14_14.sub
    L15_15 = L2_2
    L16_16 = -4
    L14_14 = L14_14(L15_15, L16_16)
  elseif L14_14 == ".dll" then
    if L3_3 == 9 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^%dvolk%."
      L14_14 = L14_14(L15_15, L16_16)
      if L14_14 ~= 1 then
        L15_15 = L2_2
        L14_14 = L2_2.find
        L16_16 = "^%dzomi%."
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 ~= 1 then
          L15_15 = L2_2
          L14_14 = L2_2.find
          L16_16 = "^%dffvv%."
          L14_14 = L14_14(L15_15, L16_16)
          if L14_14 ~= 1 then
            L15_15 = L2_2
            L14_14 = L2_2.find
            L16_16 = "^%dfggd%."
            L14_14 = L14_14(L15_15, L16_16)
            if L14_14 ~= 1 then
              L15_15 = L2_2
              L14_14 = L2_2.find
              L16_16 = "^%dbito%."
              L14_14 = L14_14(L15_15, L16_16)
              if L14_14 ~= 1 then
                L15_15 = L2_2
                L14_14 = L2_2.find
                L16_16 = "^%dreff%."
                L14_14 = L14_14(L15_15, L16_16)
                if L14_14 ~= 1 then
                  L15_15 = L2_2
                  L14_14 = L2_2.find
                  L16_16 = "^%dbrtd%."
                  L14_14 = L14_14(L15_15, L16_16)
                  if L14_14 ~= 1 then
                    L15_15 = L2_2
                    L14_14 = L2_2.find
                    L16_16 = "^%dtuba%."
                    L14_14 = L14_14(L15_15, L16_16)
                    if L14_14 ~= 1 then
                      L15_15 = L2_2
                      L14_14 = L2_2.find
                      L16_16 = "^%dfana%."
                      L14_14 = L14_14(L15_15, L16_16)
                      if L14_14 ~= 1 then
                        L15_15 = L2_2
                        L14_14 = L2_2.find
                        L16_16 = "^%dvaaz%."
                        L14_14 = L14_14(L15_15, L16_16)
                        if L14_14 ~= 1 then
                          L15_15 = L2_2
                          L14_14 = L2_2.find
                          L16_16 = "^%dglum%."
                          L14_14 = L14_14(L15_15, L16_16)
                          if L14_14 ~= 1 then
                            L15_15 = L2_2
                            L14_14 = L2_2.find
                            L16_16 = "^%dlona%."
                            L14_14 = L14_14(L15_15, L16_16)
                            if L14_14 ~= 1 then
                              L15_15 = L2_2
                              L14_14 = L2_2.find
                              L16_16 = "^%dtora%."
                              L14_14 = L14_14(L15_15, L16_16)
                              if L14_14 ~= 1 then
                                L15_15 = L2_2
                                L14_14 = L2_2.find
                                L16_16 = "^%dgeea%."
                                L14_14 = L14_14(L15_15, L16_16)
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
      elseif L14_14 == 1 then
        L5_5 = true
      end
    elseif L3_3 == 10 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^%dvoika%."
      L14_14 = L14_14(L15_15, L16_16)
      if L14_14 ~= 1 then
        L15_15 = L2_2
        L14_14 = L2_2.find
        L16_16 = "^%dtiman%."
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 ~= 1 then
          L15_15 = L2_2
          L14_14 = L2_2.find
          L16_16 = "^%dvikia%."
          L14_14 = L14_14(L15_15, L16_16)
          if L14_14 ~= 1 then
            L15_15 = L2_2
            L14_14 = L2_2.find
            L16_16 = "^%dvaman%."
            L14_14 = L14_14(L15_15, L16_16)
            if L14_14 ~= 1 then
              L15_15 = L2_2
              L14_14 = L2_2.find
              L16_16 = "^%dvilic%."
              L14_14 = L14_14(L15_15, L16_16)
              if L14_14 ~= 1 then
                L15_15 = L2_2
                L14_14 = L2_2.find
                L16_16 = "^%dzoman%."
                L14_14 = L14_14(L15_15, L16_16)
                if L14_14 ~= 1 then
                  L15_15 = L2_2
                  L14_14 = L2_2.find
                  L16_16 = "^%dtumba%."
                  L14_14 = L14_14(L15_15, L16_16)
                  if L14_14 ~= 1 then
                    L15_15 = L2_2
                    L14_14 = L2_2.find
                    L16_16 = "^%ddcvvv%."
                    L14_14 = L14_14(L15_15, L16_16)
                    if L14_14 ~= 1 then
                      L15_15 = L2_2
                      L14_14 = L2_2.find
                      L16_16 = "^%dtemad%."
                      L14_14 = L14_14(L15_15, L16_16)
                      if L14_14 ~= 1 then
                        L15_15 = L2_2
                        L14_14 = L2_2.find
                        L16_16 = "^%dbudda%."
                        L14_14 = L14_14(L15_15, L16_16)
                        if L14_14 ~= 1 then
                          L15_15 = L2_2
                          L14_14 = L2_2.find
                          L16_16 = "^%dbyuut%."
                          L14_14 = L14_14(L15_15, L16_16)
                          if L14_14 ~= 1 then
                            L15_15 = L2_2
                            L14_14 = L2_2.find
                            L16_16 = "^%dtroja%."
                            L14_14 = L14_14(L15_15, L16_16)
                            if L14_14 ~= 1 then
                              L15_15 = L2_2
                              L14_14 = L2_2.find
                              L16_16 = "^%dgansa%."
                              L14_14 = L14_14(L15_15, L16_16)
                              if L14_14 ~= 1 then
                                L15_15 = L2_2
                                L14_14 = L2_2.find
                                L16_16 = "^%dbewff%."
                                L14_14 = L14_14(L15_15, L16_16)
                                if L14_14 ~= 1 then
                                  L15_15 = L2_2
                                  L14_14 = L2_2.find
                                  L16_16 = "^%ddesta%."
                                  L14_14 = L14_14(L15_15, L16_16)
                                  if L14_14 ~= 1 then
                                    L15_15 = L2_2
                                    L14_14 = L2_2.find
                                    L16_16 = "^%dbalik%."
                                    L14_14 = L14_14(L15_15, L16_16)
                                    if L14_14 ~= 1 then
                                      L15_15 = L2_2
                                      L14_14 = L2_2.find
                                      L16_16 = "^%doiran%."
                                      L14_14 = L14_14(L15_15, L16_16)
                                      if L14_14 ~= 1 then
                                        L15_15 = L2_2
                                        L14_14 = L2_2.find
                                        L16_16 = "^%derree%."
                                        L14_14 = L14_14(L15_15, L16_16)
                                        if L14_14 ~= 1 then
                                          L15_15 = L2_2
                                          L14_14 = L2_2.find
                                          L16_16 = "^%dslota%."
                                          L14_14 = L14_14(L15_15, L16_16)
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
      elseif L14_14 == 1 then
        L5_5 = true
      end
    elseif L3_3 == 11 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^%drokato%."
      L14_14 = L14_14(L15_15, L16_16)
      if L14_14 ~= 1 then
        L15_15 = L2_2
        L14_14 = L2_2.find
        L16_16 = "^%dtorkan%."
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 ~= 1 then
          L15_15 = L2_2
          L14_14 = L2_2.find
          L16_16 = "^%dcerber%."
          L14_14 = L14_14(L15_15, L16_16)
          if L14_14 ~= 1 then
            L15_15 = L2_2
            L14_14 = L2_2.find
            L16_16 = "^%dpliuna%."
            L14_14 = L14_14(L15_15, L16_16)
            if L14_14 ~= 1 then
              L15_15 = L2_2
              L14_14 = L2_2.find
              L16_16 = "^%dtomand%."
              L14_14 = L14_14(L15_15, L16_16)
              if L14_14 ~= 1 then
                L15_15 = L2_2
                L14_14 = L2_2.find
                L16_16 = "^%dvalium%."
                L14_14 = L14_14(L15_15, L16_16)
                if L14_14 ~= 1 then
                  L15_15 = L2_2
                  L14_14 = L2_2.find
                  L16_16 = "^%dblonde%."
                  L14_14 = L14_14(L15_15, L16_16)
                  if L14_14 ~= 1 then
                    L15_15 = L2_2
                    L14_14 = L2_2.find
                    L16_16 = "^%drfeeee%."
                    L14_14 = L14_14(L15_15, L16_16)
                    if L14_14 ~= 1 then
                      L15_15 = L2_2
                      L14_14 = L2_2.find
                      L16_16 = "^%dgeorki%."
                      L14_14 = L14_14(L15_15, L16_16)
                      if L14_14 ~= 1 then
                        L15_15 = L2_2
                        L14_14 = L2_2.find
                        L16_16 = "^%dvoider%."
                        L14_14 = L14_14(L15_15, L16_16)
                        if L14_14 ~= 1 then
                          L15_15 = L2_2
                          L14_14 = L2_2.find
                          L16_16 = "^%dfugaze%."
                          L14_14 = L14_14(L15_15, L16_16)
                          if L14_14 ~= 1 then
                            L15_15 = L2_2
                            L14_14 = L2_2.find
                            L16_16 = "^%dloshek%."
                            L14_14 = L14_14(L15_15, L16_16)
                            if L14_14 ~= 1 then
                              L15_15 = L2_2
                              L14_14 = L2_2.find
                              L16_16 = "^%dvomina%."
                              L14_14 = L14_14(L15_15, L16_16)
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
      elseif L14_14 == 1 then
        L5_5 = true
      end
    elseif L3_3 == 12 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^%dsysconf%."
      L14_14 = L14_14(L15_15, L16_16)
      if L14_14 ~= 1 then
        L15_15 = L2_2
        L14_14 = L2_2.find
        L16_16 = "^%dtokinau%."
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 ~= 1 then
          L15_15 = L2_2
          L14_14 = L2_2.find
          L16_16 = "^%dvaevaod%."
          L14_14 = L14_14(L15_15, L16_16)
          if L14_14 ~= 1 then
            L15_15 = L2_2
            L14_14 = L2_2.find
            L16_16 = "^%dvokrena%."
            L14_14 = L14_14(L15_15, L16_16)
            if L14_14 ~= 1 then
              L15_15 = L2_2
              L14_14 = L2_2.find
              L16_16 = "^%dpalitra%."
              L14_14 = L14_14(L15_15, L16_16)
            end
          end
        end
      elseif L14_14 == 1 then
        L5_5 = true
      end
    elseif L3_3 == 13 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^%dskkkkkkk%."
      L14_14 = L14_14(L15_15, L16_16)
      if L14_14 ~= 1 then
        L15_15 = L2_2
        L14_14 = L2_2.find
        L16_16 = "^%dfile_saw%."
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 ~= 1 then
          L15_15 = L2_2
          L14_14 = L2_2.find
          L16_16 = "^%dpolismen%."
          L14_14 = L14_14(L15_15, L16_16)
        end
      elseif L14_14 == 1 then
        L5_5 = true
      end
    elseif L3_3 == 14 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^%ddsve2wefd%."
      L14_14 = L14_14(L15_15, L16_16)
      if L14_14 ~= 1 then
        L15_15 = L2_2
        L14_14 = L2_2.find
        L16_16 = "^%dbovtensdf%."
        L14_14 = L14_14(L15_15, L16_16)
      elseif L14_14 == 1 then
        L5_5 = true
      end
    elseif L3_3 == 18 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^%d%d%d%d%d%d%d%d%d%d%d%d%d%d%.exe"
      L14_14 = L14_14(L15_15, L16_16)
      if L14_14 == 1 then
        L14_14 = mp
        L14_14 = L14_14.set_mpattribute
        L15_15 = "Lua:SuspiciousPEFileName.B"
        L14_14(L15_15)
      end
    else
      if L3_3 == 23 then
        L15_15 = L2_2
        L14_14 = L2_2.find
        L16_16 = "^%dsyasdsgscsafgrwonf%."
        L14_14 = L14_14(L15_15, L16_16)
      else
        if L14_14 ~= 1 then
          if L3_3 == 21 then
            L15_15 = L2_2
            L14_14 = L2_2.find
            L16_16 = "^%dvovkandnnndddddd%."
            L14_14 = L14_14(L15_15, L16_16)
          elseif L14_14 ~= 1 then
            if L3_3 == 14 then
              L15_15 = L2_2
              L14_14 = L2_2.find
              L16_16 = "^%dchtototam%."
              L14_14 = L14_14(L15_15, L16_16)
            end
          end
      end
      else
        if L14_14 == 1 then
          L5_5 = true
      end
      elseif L3_3 == 31 then
        L15_15 = L2_2
        L14_14 = L2_2.find
        L16_16 = "^[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f]%[%d%]%.exe"
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 == 1 then
          L4_4 = true
        end
      elseif L3_3 == 8 then
        L15_15 = L2_2
        L14_14 = L2_2.find
        L16_16 = "^%d%[%d%]%."
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 == 1 then
          L6_6 = true
          L10_10 = true
        end
      end
    end
    if L3_3 > 25 and L3_3 < 100 then
      L14_14 = string
      L14_14 = L14_14.sub
      L15_15 = L2_2
      L16_16 = 1
      L17_17 = 18
      L14_14 = L14_14(L15_15, L16_16, L17_17)
      if L14_14 == "api-ms-win-system-" then
        L14_14 = string
        L14_14 = L14_14.sub
        L15_15 = L2_2
        L16_16 = -4
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 == ".dll" then
          L15_15 = L1_1
          L14_14 = L1_1.find
          L16_16 = "\\appdata\\locallow\\{"
          L17_17 = 1
          L18_18 = true
          L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
          if L14_14 ~= nil then
            L4_4 = true
          else
            L15_15 = L1_1
            L14_14 = L1_1.find
            L16_16 = "\\windows genuine advantage\\{"
            L17_17 = 1
            L18_18 = true
            L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
            if L14_14 == nil then
              L15_15 = L1_1
              L14_14 = L1_1.find
              L16_16 = "\\windows\\installer\\{"
              L17_17 = 1
              L18_18 = true
              L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
              if L14_14 == nil then
                L15_15 = L1_1
                L14_14 = L1_1.find
                L16_16 = "\\appdata\\local\\temp\\{........%-....%-....%-....%-............}\\"
                L14_14 = L14_14(L15_15, L16_16)
                if L14_14 == nil then
                  L15_15 = L1_1
                  L14_14 = L1_1.find
                  L16_16 = "\\local settings\\temp\\{........%-....%-....%-....%-............}\\"
                  L14_14 = L14_14(L15_15, L16_16)
                end
              end
            elseif L14_14 ~= nil then
              L7_7 = true
            end
          end
        end
      end
    end
    L15_15 = L1_1
    L14_14 = L1_1.find
    L16_16 = "\\programdata\\{"
    L17_17 = 1
    L18_18 = true
    L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
    if L14_14 == nil then
      L15_15 = L1_1
      L14_14 = L1_1.find
      L16_16 = "\\application data\\{"
      L17_17 = 1
      L18_18 = true
      L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
    elseif L14_14 ~= nil then
      L15_15 = L1_1
      L14_14 = L1_1.find
      L16_16 = "\\programdata\\{9a88e103-a20a-4ea5-8636-c73b709a5bf8}\\"
      L17_17 = 1
      L18_18 = true
      L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
      if L14_14 == nil then
        L15_15 = L1_1
        L14_14 = L1_1.find
        L16_16 = "\\programdata\\{f66cb4ee-546f-4d54-9332-216de189aab0}\\"
        L17_17 = 1
        L18_18 = true
        L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
        if L14_14 == nil then
          L15_15 = L1_1
          L14_14 = L1_1.find
          L16_16 = "\\programdata\\{698e0848-6d29-4305-80dc-e8d609260ce2}\\"
          L17_17 = 1
          L18_18 = true
          L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
          if L14_14 == nil then
            L15_15 = L1_1
            L14_14 = L1_1.find
            L16_16 = "\\programdata\\{49a0bac7-3326-4433-9373-4aa8793abb5c}\\"
            L17_17 = 1
            L18_18 = true
            L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
            if L14_14 == nil then
              L15_15 = L1_1
              L14_14 = L1_1.find
              L16_16 = "\\programdata\\{effc3e07-aed7-4c3c-992f-2c5eb14af4a8}\\"
              L17_17 = 1
              L18_18 = true
              L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
              if L14_14 == nil then
                L15_15 = L1_1
                L14_14 = L1_1.find
                L16_16 = "\\programdata\\{d9e629dc-cb1c-4a97-9900-81922b4effd4}\\"
                L17_17 = 1
                L18_18 = true
                L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                if L14_14 == nil then
                  L15_15 = L1_1
                  L14_14 = L1_1.find
                  L16_16 = "\\programdata\\{ca2facf7-9029-4a21-892b-e7f60b39ff1a}\\"
                  L17_17 = 1
                  L18_18 = true
                  L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                  if L14_14 == nil then
                    L15_15 = L1_1
                    L14_14 = L1_1.find
                    L16_16 = "\\programdata\\{4ba6ab29-2eab-46fc-8b33-a767b5dbb0f3}\\"
                    L17_17 = 1
                    L18_18 = true
                    L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                    if L14_14 == nil then
                      L15_15 = L1_1
                      L14_14 = L1_1.find
                      L16_16 = "\\application data\\{4d03d701-c800-49f0-8590-127eff2877ff}\\"
                      L17_17 = 1
                      L18_18 = true
                      L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                      if L14_14 == nil then
                        L15_15 = L1_1
                        L14_14 = L1_1.find
                        L16_16 = "\\programdata\\{9b82496a-c211-4fcf-84b5-e2b3a1d99f8f}"
                        L17_17 = 1
                        L18_18 = true
                        L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                        if L14_14 == nil then
                          L15_15 = L1_1
                          L14_14 = L1_1.find
                          L16_16 = "\\programdata\\{d93bcbeb-07b6-4fa0-86bf-5552dfc4404c}"
                          L17_17 = 1
                          L18_18 = true
                          L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                          if L14_14 == nil then
                            L15_15 = L1_1
                            L14_14 = L1_1.find
                            L16_16 = "\\programdata\\{65ee3202-cce0-4ec4-9369-0a126e1da09c}"
                            L17_17 = 1
                            L18_18 = true
                            L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                            if L14_14 == nil then
                              L15_15 = L1_1
                              L14_14 = L1_1.find
                              L16_16 = "\\programdata\\{b7a719fb-068f-41ad-8261-3569c22edec2}"
                              L17_17 = 1
                              L18_18 = true
                              L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                              if L14_14 == nil then
                                L15_15 = L1_1
                                L14_14 = L1_1.find
                                L16_16 = "\\programdata\\{18067bd7-3c56-4e2e-8627-51ee9adc5a30}"
                                L17_17 = 1
                                L18_18 = true
                                L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                                if L14_14 == nil then
                                  L15_15 = L1_1
                                  L14_14 = L1_1.find
                                  L16_16 = "\\programdata\\{1016e27d-c6ce-4668-9211-5ec18caadbf8}"
                                  L17_17 = 1
                                  L18_18 = true
                                  L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                                  if L14_14 == nil then
                                    L15_15 = L1_1
                                    L14_14 = L1_1.find
                                    L16_16 = "\\programdata\\{39567fd8-2a86-4514-8b0a-406c6e60a8bb}"
                                    L17_17 = 1
                                    L18_18 = true
                                    L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                                    if L14_14 == nil then
                                      L15_15 = L1_1
                                      L14_14 = L1_1.find
                                      L16_16 = "\\programdata\\{9925001e-4d97-434f-8579-2e06af34678f}"
                                      L17_17 = 1
                                      L18_18 = true
                                      L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                                      if L14_14 == nil then
                                        L15_15 = L1_1
                                        L14_14 = L1_1.find
                                        L16_16 = "\\programdata\\{0bf6ab17-0058-462c-8274-0655b925c812}"
                                        L17_17 = 1
                                        L18_18 = true
                                        L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                                        if L14_14 == nil then
                                          L15_15 = L1_1
                                          L14_14 = L1_1.find
                                          L16_16 = "\\programdata\\{a4682c3b-ab83-49b3-8eb5-b44e3f044b59}"
                                          L17_17 = 1
                                          L18_18 = true
                                          L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                                          if L14_14 == nil then
                                            L15_15 = L1_1
                                            L14_14 = L1_1.find
                                            L16_16 = "\\programdata\\{0a41da87-d172-4c26-9422-d2c4f5549861}"
                                            L17_17 = 1
                                            L18_18 = true
                                            L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                                            if L14_14 == nil then
                                              L15_15 = L1_1
                                              L14_14 = L1_1.find
                                              L16_16 = "\\programdata\\{2cd18189-70a0-4ae9-899e-05bad272e52e}"
                                              L17_17 = 1
                                              L18_18 = true
                                              L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                                              if L14_14 == nil then
                                                L15_15 = L1_1
                                                L14_14 = L1_1.find
                                                L16_16 = "\\programdata\\{33896b39-667b-48e5-8c29-b02174b09d04}"
                                                L17_17 = 1
                                                L18_18 = true
                                                L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                                                if L14_14 == nil then
                                                  L15_15 = L1_1
                                                  L14_14 = L1_1.find
                                                  L16_16 = "\\programdata\\{2f752dac-f812-4497-9e91-d8701a4745cb}"
                                                  L17_17 = 1
                                                  L18_18 = true
                                                  L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
                                                  if L14_14 == nil then
                                                    L15_15 = L1_1
                                                    L14_14 = L1_1.find
                                                    L16_16 = "\\programdata\\{9cad18b2-ff9b-4cca-8ee0-a4cda3ad5f51}\\"
                                                    L17_17 = 1
                                                    L18_18 = true
                                                    L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
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
      elseif L14_14 ~= nil and L3_3 > 4 then
        L14_14 = string
        L14_14 = L14_14.sub
        L15_15 = L2_2
        L16_16 = -4
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 == ".dll" then
          L7_7 = true
          L10_10 = true
          L13_13 = false
        end
      end
    end
    L15_15 = L2_2
    L14_14 = L2_2.find
    L16_16 = "^rad.....%.tmp%.exe"
    L14_14 = L14_14(L15_15, L16_16)
    if L14_14 ~= 1 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^rad.....%.tmp%.dll"
      L14_14 = L14_14(L15_15, L16_16)
    elseif L14_14 == 1 then
      L15_15 = L1_1
      L14_14 = L1_1.len
      L14_14 = L14_14(L15_15)
      if L14_14 > 20 then
        L15_15 = L1_1
        L14_14 = L1_1.find
        L16_16 = "\\appdata\\local\\temp\\"
        L17_17 = 1
        L18_18 = true
        L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
        if L14_14 == nil then
          L15_15 = L1_1
          L14_14 = L1_1.find
          L16_16 = "\\local settings\\temp\\"
          L17_17 = 1
          L18_18 = true
          L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
        elseif L14_14 ~= nil then
          L14_14 = string
          L14_14 = L14_14.sub
          L15_15 = L1_1
          L16_16 = -6
          L14_14 = L14_14(L15_15, L16_16)
          if L14_14 ~= "\\temp\\" then
            L14_14 = string
            L14_14 = L14_14.sub
            L15_15 = L1_1
            L16_16 = -10
            L14_14 = L14_14(L15_15, L16_16)
          elseif L14_14 == "\\temp\\low\\" then
            L8_8 = true
          end
        end
      end
    end
  end
end
if L3_3 == 27 then
  L15_15 = L2_2
  L14_14 = L2_2.find
  L16_16 = "^~tmf%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%.tmp"
  L14_14 = L14_14(L15_15, L16_16)
else
  if L14_14 ~= 1 then
    if L3_3 > 18 and L3_3 < 26 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^0%.%d+%.log"
      L14_14 = L14_14(L15_15, L16_16)
    end
end
else
  if L14_14 == 1 then
    L5_5 = true
end
else
  if L3_3 == 12 then
    L15_15 = L2_2
    L14_14 = L2_2.find
    L16_16 = "^logos%[%d%]%.php"
    L14_14 = L14_14(L15_15, L16_16)
  else
    if L14_14 ~= 1 then
      if L3_3 > 13 and L3_3 < 23 then
        L15_15 = L2_2
        L14_14 = L2_2.find
        L16_16 = "^%d%d?%d?_%d%d?%d?_%d%d?%d?_%d%d?%d?%[%d%]%.htm"
        L14_14 = L14_14(L15_15, L16_16)
      end
  end
  elseif L14_14 == 1 then
    L4_4 = true
  end
end
L14_14 = string
L14_14 = L14_14.sub
L15_15 = L2_2
L16_16 = -4
L14_14 = L14_14(L15_15, L16_16)
if L14_14 == ".dll" then
  L15_15 = L1_1
  L14_14 = L1_1.find
  L16_16 = "\\appdata\\locallow\\{........%-....%-....%-....%-............}\\"
  L14_14 = L14_14(L15_15, L16_16)
  if L14_14 ~= nil then
    L4_4 = true
    L14_14 = mp
    L14_14 = L14_14.set_mpattribute
    L15_15 = "Lua:BedepFileName.G"
    L14_14(L15_15)
  end
else
  L14_14 = string
  L14_14 = L14_14.sub
  L15_15 = L2_2
  L16_16 = -4
  L14_14 = L14_14(L15_15, L16_16)
  if L14_14 == ".tmp" then
    L15_15 = L1_1
    L14_14 = L1_1.find
    L16_16 = "\\programdata\\windows genuine advantage\\{........%-....%-....%-....%-............}\\"
    L14_14 = L14_14(L15_15, L16_16)
    if L14_14 ~= nil then
      L7_7 = true
    elseif L3_3 == 7 or L3_3 == 8 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^[0-9a-f][0-9a-f][0-9a-f][0-9a-f]?%.tmp"
      L14_14 = L14_14(L15_15, L16_16)
      if L14_14 == 1 then
        L15_15 = L1_1
        L14_14 = L1_1.len
        L14_14 = L14_14(L15_15)
        if L14_14 > 20 then
          L15_15 = L1_1
          L14_14 = L1_1.find
          L16_16 = "\\appdata\\local\\temp\\"
          L17_17 = 1
          L18_18 = true
          L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
          if L14_14 == nil then
            L15_15 = L1_1
            L14_14 = L1_1.find
            L16_16 = "\\local settings\\temp\\"
            L17_17 = 1
            L18_18 = true
            L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
          elseif L14_14 ~= nil then
            L14_14 = string
            L14_14 = L14_14.sub
            L15_15 = L1_1
            L16_16 = -6
            L14_14 = L14_14(L15_15, L16_16)
            if L14_14 ~= "\\temp\\" then
              L14_14 = string
              L14_14 = L14_14.sub
              L15_15 = L1_1
              L16_16 = -10
              L14_14 = L14_14(L15_15, L16_16)
            elseif L14_14 == "\\temp\\low\\" then
              L4_4 = true
              L10_10 = true
              L12_12 = true
              L13_13 = false
            end
          end
        end
        L15_15 = L1_1
        L14_14 = L1_1.len
        L14_14 = L14_14(L15_15)
        if L14_14 > 10 then
          L14_14 = string
          L14_14 = L14_14.sub
          L15_15 = L1_1
          L16_16 = -10
          L14_14 = L14_14(L15_15, L16_16)
          if L14_14 == "\\temp\\low\\" then
            L4_4 = true
            L10_10 = true
            L12_12 = true
            L13_13 = false
          end
        end
      end
    end
    L15_15 = L1_1
    L14_14 = L1_1.find
    L16_16 = "\\appdata\\local\\temp\\{........%-....%-....%-....%-............}\\$"
    L14_14 = L14_14(L15_15, L16_16)
    if L14_14 == nil then
      L15_15 = L1_1
      L14_14 = L1_1.find
      L16_16 = "\\local settings\\temp\\{........%-....%-....%-....%-............}\\$"
      L14_14 = L14_14(L15_15, L16_16)
    elseif L14_14 ~= nil and L3_3 == 11 then
      L15_15 = L2_2
      L14_14 = L2_2.find
      L16_16 = "^tmp[0-9a-f][0-9a-f][0-9a-f][0-9a-f]%.tmp"
      L14_14 = L14_14(L15_15, L16_16)
      if L14_14 == 1 then
        L7_7 = true
        L13_13 = false
      end
    end
  end
end
if (L4_4 or L5_5 or L6_6 or L7_7 or L8_8 or L9_9) and not L10_10 then
  L14_14 = mp
  L14_14 = L14_14.set_mpattribute
  L15_15 = "Lua:SuspiciousPEFileName.A"
  L14_14(L15_15)
end
if L4_4 or L5_5 or L6_6 or L7_7 or L8_8 then
  L14_14 = mp
  L14_14 = L14_14.get_contextdata
  L15_15 = mp
  L15_15 = L15_15.CONTEXT_DATA_SCANREASON
  L14_14 = L14_14(L15_15)
  L15_15 = false
  L16_16 = pcall
  L17_17 = mp
  L17_17 = L17_17.get_parent_filehandle
  L17_17 = L16_16(L17_17)
  if L16_16 then
    L18_18 = pcall
    L19_19 = mp
    L19_19 = L19_19.get_filesize_by_handle
    L20_20 = L17_17
    L19_19 = L18_18(L19_19, L20_20)
    _ = L19_19
    L16_16 = L18_18
  end
  if not L16_16 then
    L15_15 = true
  end
  L18_18 = false
  L19_19 = peattributes
  L19_19 = L19_19.isdll
  if L19_19 then
    L19_19 = peattributes
    L19_19 = L19_19.no_exports
    if L19_19 then
      L19_19 = peattributes
      L19_19 = L19_19.no_ep
      if not L19_19 then
        L19_19 = epcode
        L19_19 = L19_19[1]
        if L19_19 == 184 then
          L19_19 = mp
          L19_19 = L19_19.readu_u32
          L20_20 = epcode
          L21_21 = 3
          L19_19 = L19_19(L20_20, L21_21)
          if L19_19 == 3254779904 then
            L19_19 = mp
            L19_19 = L19_19.readu_u16
            L20_20 = epcode
            L21_21 = 7
            L19_19 = L19_19(L20_20, L21_21)
          end
        end
      elseif L19_19 == 12 then
        L18_18 = true
      end
    end
  end
  L19_19 = false
  L20_20 = pehdr
  L20_20 = L20_20.NumberOfSections
  if L20_20 > 0 then
    L20_20 = mp
    L20_20 = L20_20.getfilesize
    L20_20 = L20_20()
    L21_21 = pesecs
    L21_21 = L21_21[pehdr.NumberOfSections]
    L21_21 = L21_21.PointerToRawData
    L21_21 = L21_21 + pesecs[pehdr.NumberOfSections].SizeOfRawData
    if L20_20 < L21_21 then
      L19_19 = true
    end
  end
  if L15_15 and not L18_18 and not L19_19 then
    L20_20 = mp
    L20_20 = L20_20.SCANREASON_ONMODIFIEDHANDLECLOSE
    if L14_14 == L20_20 then
      L20_20 = false
      L21_21 = false
      L20_20, L21_21 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_NEWLYCREATEDHINT)
      if not L20_20 then
        L21_21 = false
      end
      if L4_4 and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "iexplore.exe" then
        if L11_11 or L13_13 and not L21_21 then
          mp.set_mpattribute("Lua:ContextEKIEDropTest")
        else
          mp.set_mpattribute("Lua:ContextEKIEDrop")
        end
      elseif L4_4 and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "opera.exe" and not L12_12 then
        if L11_11 or L13_13 and not L21_21 then
          mp.set_mpattribute("Lua:ContextEKOperaDropTest")
        else
          mp.set_mpattribute("Lua:ContextEKOperaDrop")
        end
      elseif L4_4 and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "plugin-container.exe" and not L12_12 then
        if L11_11 or L13_13 and not L21_21 then
          mp.set_mpattribute("Lua:ContextEKFirefoxDropTest")
        else
          mp.set_mpattribute("Lua:ContextEKFirefoxDrop")
        end
      elseif L5_5 and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "java.exe" then
        if L11_11 or L13_13 and not L21_21 then
          mp.set_mpattribute("Lua:ContextEKJavaDropTest")
        else
          mp.set_mpattribute("Lua:ContextEKJavaDrop")
        end
      elseif L6_6 and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "acrord32.exe" then
        if L11_11 or L13_13 and not L21_21 then
          mp.set_mpattribute("Lua:ContextEKAcroRdDropTest")
        else
          mp.set_mpattribute("Lua:ContextEKAcroRdDrop")
        end
      elseif L4_4 and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "aolbrowser.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "msn.exe") and not L12_12 or L8_8 and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "wscript.exe" then
        if L11_11 or L13_13 and not L21_21 then
          mp.set_mpattribute("Lua:ContextEKOtherDropTest")
        else
          mp.set_mpattribute("Lua:ContextEKOtherDrop")
        end
      elseif L7_7 and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "explorer.exe" then
        if L11_11 or L13_13 and not L21_21 then
          mp.set_mpattribute("Lua:ContextEKExplorerDropTest")
        else
          mp.set_mpattribute("Lua:ContextEKExplorerDrop")
        end
      end
    end
  end
end
L14_14 = mp
L14_14 = L14_14.CLEAN
return L14_14
