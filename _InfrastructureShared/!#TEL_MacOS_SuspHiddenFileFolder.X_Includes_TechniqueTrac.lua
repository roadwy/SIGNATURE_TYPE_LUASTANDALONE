local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 == nil or L1_1 == "" or L0_0 == nil or L0_0 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L0_0, "/bin/", 1, true)
if L2_2 ~= 1 then
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L0_0, "/system/", 1, true)
  if L2_2 ~= 1 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L0_0, "/library/apple/", 1, true)
    if L2_2 ~= 1 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L0_0, "/library/installersandboxes/", 1, true)
      if L2_2 ~= 1 then
        L2_2 = string
        L2_2 = L2_2.find
        L2_2 = L2_2(L0_0, "/library/systemextensions/", 1, true)
        if L2_2 ~= 1 then
          L2_2 = string
          L2_2 = L2_2.find
          L2_2 = L2_2(L0_0, "/.git/modules/", 1, true)
          if not L2_2 then
            L2_2 = string
            L2_2 = L2_2.find
            L2_2 = L2_2(L0_0, "/.git/hooks/", 1, true)
            if not L2_2 then
              L2_2 = string
              L2_2 = L2_2.find
              L2_2 = L2_2(L0_0, "/sbin/", 1, true)
              if L2_2 ~= 1 then
                L2_2 = string
                L2_2 = L2_2.find
                L2_2 = L2_2(L0_0, "/private/var/db/com.apple.xpc.roleaccountd.staging", 1, true)
                if L2_2 ~= 1 then
                  L2_2 = string
                  L2_2 = L2_2.find
                  L2_2 = L2_2(L0_0, "/private/var/folders/", 1, true)
                  if L2_2 ~= 1 then
                    L2_2 = string
                    L2_2 = L2_2.find
                    L2_2 = L2_2(L0_0, "/usr/", 1, true)
                    if L2_2 == 1 then
                      L2_2 = string
                      L2_2 = L2_2.find
                      L2_2 = L2_2(L0_0, "/usr/local/", 1, true)
                      L2_2 = not L2_2
                    elseif L2_2 ~= 1 then
                      L2_2 = string
                      L2_2 = L2_2.find
                      L2_2 = L2_2(L0_0, "/applications/microsoft defender.app/", 1, true)
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
elseif L2_2 == 1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L2_2 = L2_2(mp.CONTEXT_DATA_PROCESS_PPID)
if (string.find(L0_0, "/contents/resources", 1, true) or string.find(L0_0, "/users/shared", 1, true) or string.find(L0_0, "/library", 1, true)) and (string.find(L1_1, ".", 1, true) == 1 or string.find(L0_0, "/.", 1, true)) then
  if L2_2 then
    TrackPidAndTechnique(L2_2, "T1564.001", "DefenseEvasion_HiddenFilesandDirectories")
    MpCommon.BmTriggerSig(L2_2, "BM_SuspMacHiddenFileFolder", L0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN
