local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if L1_1 >= 15 then
    L1_1 = {}
    L1_1["services.exe"] = true
    L1_1["msmpeng.exe"] = true
    L1_1["trustedinstaller.exe"] = true
    L1_1["tiworker.exe"] = true
    L1_1["poqexec.exe"] = true
    L1_1["mbamservice.exe"] = true
    L1_1["osrssinst.exe"] = true
    L1_1["core.exe"] = true
    L1_1["instup.exe"] = true
    L1_1["tguard.exe"] = true
    L1_1["nortonsecurity.exe"] = true
    L1_1["mfehidin.exe"] = true
    L1_1["mfeamcin.exe"] = true
    L1_1["avp.exe"] = true
    L1_1["computerztray.exe"] = true
    L1_1["w32tm.exe"] = true
    L1_1["printisolationhost.exe"] = true
    L1_1["xlserviceplatform.exe"] = true
    L1_1["zhudongfangyu.exe"] = true
    L1_1["qqlivesetupex.exe"] = true
    L2_2 = L0_0.match
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 ~= nil then
      L2_2 = L3_3
      if L3_3 then
        return L3_3
      end
    end
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
end
L2_2 = L1_1.find
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
else
  L2_2 = L1_1.find
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  else
    L2_2 = L1_1.find
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
end
if L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
    if sysio.IsFileExists(L7_7) then
      bm.add_related_file(L7_7)
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
