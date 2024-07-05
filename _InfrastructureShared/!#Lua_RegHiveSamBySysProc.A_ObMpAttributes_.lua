local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
L0_0 = L0_0(L1_1)
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "\\device\\harddiskvolumeshadowcopy", 1, true)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\system volume information\\_restore", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "\\ifm\\registry\\", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "\\ntuser.dat", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L1_1 = L1_1(L0_0, "\\windows\\system32\\config\\s", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L1_1 = L1_1(L0_0, "\\windows\\system32\\config\\regback\\s", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L1_1 = L1_1(L0_0, "\\windows\\hkey_local_machine\\", 1, true)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L1_1 = L1_1(L0_0, "\\sppcbshivestore\\", 1, true)
            end
          end
        end
      end
    end
  end
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.sub
L1_1 = L1_1(L0_0, 0, 4)
if L1_1 == "\\\\?\\" then
  L1_1 = string
  L1_1 = L1_1.sub
  L1_1 = L1_1(L0_0, 5)
  L0_0 = L1_1
end
L1_1 = L0_0.sub
L1_1 = L1_1(L0_0, 1, 8)
if L1_1 == "\\device\\" then
  L1_1 = MpCommon
  L1_1 = L1_1.PathToWin32Path
  L1_1 = L1_1(L0_0)
  L0_0 = L1_1
  if L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0)
  L0_0 = L1_1
end
L1_1 = {}
table.insert(L1_1, L0_0)
MpCommon.SetPersistContextNoPath("RegHiveSamBySysProc", L1_1, 0)
return mp.INFECTED
