local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSDEVICEPATH
L6_6 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L1_1(L2_2))
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.bitor
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_PATH
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_FNAME
L4_4 = L4_4(L5_5, L6_6)
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
L6_6 = L3_3(L4_4, L5_5)
L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6, L3_3(L4_4, L5_5))
if L0_0 == nil or L1_1 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L0_0 == "" or L1_1 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.getfilesize
L4_4 = L4_4()
if L1_1 == "keyvaultfx.exe" then
  L5_5 = string
  L5_5 = L5_5.find
  L6_6 = L2_2
  L5_5 = L5_5(L6_6, "\\netlock\\", 1, true)
else
  if not L5_5 then
    if L1_1 == "netlock.exe" then
      L5_5 = string
      L5_5 = L5_5.find
      L6_6 = L2_2
      L5_5 = L5_5(L6_6, "\\netlock\\", 1, true)
    elseif not L5_5 then
      if L1_1 == "ptlite10.exe" then
        L5_5 = string
        L5_5 = L5_5.find
        L6_6 = L2_2
        L5_5 = L5_5(L6_6, "\\ptlite10\\", 1, true)
      elseif not L5_5 then
        L5_5 = string
        L5_5 = L5_5.find
        L6_6 = L2_2
        L5_5 = L5_5(L6_6, "\\ptlres10", 1, true)
        if not L5_5 then
          L5_5 = string
          L5_5 = L5_5.find
          L6_6 = L1_1
          L5_5 = L5_5(L6_6, "rufus", 1, true)
          if L5_5 then
            L5_5 = string
            L5_5 = L5_5.find
            L6_6 = L2_2
            L5_5 = L5_5(L6_6, "windows\\winsxs", 1, true)
          elseif not L5_5 or not (L4_4 < 11000) then
            if L1_1 == "regsvr32.exe" then
              L5_5 = string
              L5_5 = L5_5.find
              L6_6 = L2_2
              L5_5 = L5_5(L6_6, "lav filters", 1, true)
              if L5_5 then
                L6_6 = L3_3
                L5_5 = L3_3.sub
                L5_5 = L5_5(L6_6, -3)
              elseif L5_5 ~= ".ax" then
                L5_5 = string
                L5_5 = L5_5.find
                L6_6 = L2_2
                L5_5 = L5_5(L6_6, "checkver.ocx", 1, true)
                if not L5_5 or L4_4 ~= 306256 then
                  L5_5 = string
                  L5_5 = L5_5.find
                  L6_6 = L2_2
                  L5_5 = L5_5(L6_6, "diswhql.dll", 1, true)
                  if not L5_5 or L4_4 ~= 6205440 then
                    L5_5 = string
                    L5_5 = L5_5.find
                    L6_6 = L2_2
                    L5_5 = L5_5(L6_6, "melsoft\\gx works2", 1, true)
                  end
                end
              end
            elseif not L5_5 then
              L5_5 = string
              L5_5 = L5_5.find
              L6_6 = L1_1
              L5_5 = L5_5(L6_6, "virtualbench.exe", 1, true)
              if L5_5 then
                L5_5 = string
                L5_5 = L5_5.find
                L6_6 = L2_2
                L5_5 = L5_5(L6_6, "nationalinstruments", 1, true)
              elseif not L5_5 then
                if L1_1 == "start.exe" then
                  L5_5 = string
                  L5_5 = L5_5.find
                  L6_6 = L3_3
                  L5_5 = L5_5(L6_6, "rtpkcs11ecp.dll", 1, true)
                  if not L5_5 then
                    L5_5 = string
                    L5_5 = L5_5.find
                    L6_6 = L3_3
                    L5_5 = L5_5(L6_6, "libssl-1_1.dll", 1, true)
                    if not L5_5 then
                      L5_5 = string
                      L5_5 = L5_5.find
                      L6_6 = L3_3
                      L5_5 = L5_5(L6_6, "rtengine.dll", 1, true)
                      if not L5_5 then
                        L5_5 = string
                        L5_5 = L5_5.find
                        L6_6 = L3_3
                        L5_5 = L5_5(L6_6, "libcrypto-1_1.dll", 1, true)
                      end
                    end
                  else
                  end
                end
              end
            end
          end
        end
      end
    end
end
elseif L5_5 and L4_4 < 3000000 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = nil
if L1_1 ~= "rundll32.exe" and L1_1 ~= "regsvr32.exe" then
  L6_6 = L0_0
  L6_6 = L6_6 .. "\\" .. L1_1
  L5_5 = MpCommon.GetOriginalFileName(L6_6)
end
L6_6 = mp
L6_6 = L6_6.get_contextdata
L6_6 = L6_6(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
if mp.bitand(L6_6, 2) == 0 then
  mp.set_mpattribute("Lua:Context/DllOnMountedDrive")
  if L1_1 == "regsvr32.exe" or L5_5 ~= nil and L5_5 == "regsvr32.exe" then
    if L3_3:sub(-3):lower() ~= "dll" and L3_3:sub(-3):lower() ~= "ocx" and L3_3:sub(-3):lower() ~= ".ax" then
      if L1_1 ~= "regsvr32.exe" then
        mp.set_mpattribute("Lua:Context/VerySuspiciousMountedDriveDllRegsvrLoad")
      else
        mp.set_mpattribute("Lua:Context/SuspiciousMountedDriveDllRegsvrLoad")
      end
    else
      mp.set_mpattribute("Lua:Context/MountedDriveDllRegsvrLoad")
    end
  elseif L1_1 == "rundll32.exe" or L5_5 ~= nil and L5_5 == "rundll32.exe" then
    if L3_3:sub(-3):lower() ~= "dll" and L3_3:sub(-3):lower() ~= "ocx" then
      if L1_1 ~= "rundll32.exe" then
        mp.set_mpattribute("Lua:Context/VerySuspiciousMountedDriveDllRundllLoad")
      else
        mp.set_mpattribute("Lua:Context/SuspiciousMountedDriveDllRundllLoad")
      end
    else
      mp.set_mpattribute("Lua:Context/MountedDriveDllRundllLoad")
    end
  end
  if L0_0:find("\\device\\cdrom", 1, true) ~= nil then
    mp.set_mpattribute("Lua:Context/MaybeDllSideLoadingOnMountedDrive")
  end
else
  if L1_1 == "regsvr32.exe" or L5_5 ~= nil and L5_5 == "regsvr32.exe" then
    if L3_3:sub(-3):lower() ~= "dll" and L3_3:sub(-3):lower() ~= "ocx" then
      if L1_1 ~= "regsvr32.exe" then
        mp.set_mpattribute("Lua:Context/VerySuspiciousMountedDriveHiddenDllRegsvrLoad")
      else
        mp.set_mpattribute("Lua:Context/SuspiciousMountedDriveHiddenDllRegsvrLoad")
      end
    else
      mp.set_mpattribute("Lua:Context/MountedDriveHiddenDllRegsvrLoad")
    end
  elseif L1_1 == "rundll32.exe" or L5_5 ~= nil and L5_5 == "rundll32.exe" then
    if L3_3:sub(-3):lower() ~= "dll" and L3_3:sub(-3):lower() ~= "ocx" then
      if L1_1 ~= "rundll32.exe" then
        mp.set_mpattribute("Lua:Context/VerySuspiciousMountedDriveHiddenDllRundllLoad")
      else
        mp.set_mpattribute("Lua:Context/SuspiciousMountedDriveHiddenDllRundllLoad")
      end
    else
      mp.set_mpattribute("Lua:Context/MountedDriveHiddenDllRundllLoad")
    end
  end
  mp.set_mpattribute("Lua:Context/HiddenDllOnMountedDrive")
  if L0_0:find("\\device\\cdrom", 1, true) ~= nil then
    mp.set_mpattribute("Lua:Context/MaybeHiddenDllSideLoadingOnMountedDrive")
  end
end
return mp.CLEAN
