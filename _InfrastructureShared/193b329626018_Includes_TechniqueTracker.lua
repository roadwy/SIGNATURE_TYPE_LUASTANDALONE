local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L0_0 = L1_1.utf8p2
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L0_0 = L1_1.utf8p2
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.utf8p2
        if L1_1 ~= nil then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[4]
          L0_0 = L1_1.utf8p2
        end
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L1_1 = L1_1.utf8p2
          if L1_1 ~= nil then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[5]
            L0_0 = L1_1.utf8p2
          end
        else
          L1_1 = mp
          L1_1 = L1_1.CLEAN
          return L1_1
        end
      end
    end
  end
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
if string.find(L1_1, "/bin/", 1, true) == 1 or string.find(L1_1, "/system/", 1, true) == 1 or string.find(L1_1, "/library/apple/", 1, true) == 1 or string.find(L1_1, "/library/installersandboxes/", 1, true) == 1 or string.find(L1_1, "/.git/modules/", 1, true) or string.find(L1_1, "/.git/hooks/", 1, true) or string.find(L1_1, "/sbin/", 1, true) == 1 or string.find(L1_1, "/private/var/db/com.apple.xpc.roleaccountd.staging", 1, true) == 1 or string.find(L1_1, "/private/var/folders/", 1, true) == 1 or string.find(L1_1, "/usr/", 1, true) == 1 and not string.find(L1_1, "/usr/local/", 1, true) == 1 or string.find(L1_1, "/applications/microsoft defender.app/", 1, true) == 1 then
  return mp.CLEAN
end
if string.match(L0_0, "/%.") then
  TrackPidAndTechniqueBM("BM", "T1059.006", "Execution_CommandandScriptingInterpreter_Python")
  return mp.INFECTED
end
return mp.CLEAN
