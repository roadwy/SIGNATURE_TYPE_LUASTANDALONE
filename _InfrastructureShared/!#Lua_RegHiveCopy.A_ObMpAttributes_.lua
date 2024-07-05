local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
L0_0 = L0_0(L1_1)
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
L0_0 = L1_1
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
    L1_1 = L1_1(L0_0, "\\sppcbshivestore\\", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "\\adaptivacache\\os", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L1_1 = L1_1(L0_0, "\\sources\\install", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L1_1 = L1_1(L0_0, "\\amp\\tmp\\", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L1_1 = L1_1(L0_0, "\\ntuser.dat", 1, true)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L1_1 = L1_1(L0_0, "\\docker\\windowsfilter\\", 1, true)
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
L1_1 = L1_1.lower
L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
if string.find(L1_1, "ir_agent.exe", 1, true) or string.find(L1_1, "ccsvchst.exe", 1, true) or string.find(L1_1, "mssense.exe", 1, true) or string.find(L1_1, "userprofilemanager.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
