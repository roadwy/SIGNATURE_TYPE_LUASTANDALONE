local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FULL
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L5_5 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1(L2_2, L3_3))
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = ".exe.config"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "program files"
  L4_4 = 1
  L5_5 = true
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 == nil then
    L1_1 = string
    L1_1 = L1_1.sub
    L2_2 = L0_0
    L3_3 = -4
    L1_1 = L1_1(L2_2, L3_3)
  end
elseif L1_1 == ".zip" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 > 10000 then
  L1_1 = 10000
end
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = tostring
L3_3 = mp
L3_3 = L3_3.readfile
L4_4 = 0
L5_5 = L1_1
L5_5 = L3_3(L4_4, L5_5)
L2_2 = L2_2(L3_3, L4_4, L5_5, L3_3(L4_4, L5_5))
L3_3 = mp
L3_3 = L3_3.readprotection
L4_4 = true
L3_3(L4_4)
L4_4 = L2_2
L3_3 = L2_2.match
L5_5 = "<appDomainManagerAssembly value=\"(.*),"
L3_3 = L3_3(L4_4, L5_5)
L5_5 = L2_2
L4_4 = L2_2.match
L4_4 = L4_4(L5_5, "<probing privatePath=\"(.*)\"")
L5_5 = L4_4
L5_5 = L5_5 .. "\\" .. L3_3
if sysio.IsFileExists(L5_5) then
  mp.ReportLowfi(L5_5, 1924697406)
else
  L5_5 = L5_5 .. ".dll"
  if sysio.IsFileExists(L5_5) then
    mp.ReportLowfi(L5_5, 1924697406)
  end
end
return mp.INFECTED
