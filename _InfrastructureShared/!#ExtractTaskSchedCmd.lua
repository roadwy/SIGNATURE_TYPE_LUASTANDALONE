local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.GetResmgrBasePlugin
L0_0 = L0_0()
if L0_0 ~= "Taskscheduler" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "%-%>%(UTF%-16LE%)$"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "<Exec>.*<Command>(.*)</Command>.*</Exec>"
L2_2 = L2_2(L3_3, L4_4)
L3_3 = string
L3_3 = L3_3.match
L4_4 = L1_1
L5_5 = "<Exec>.*<Arguments>(.*)</Arguments>.*</Exec>"
L3_3 = L3_3(L4_4, L5_5)
if L2_2 == nil then
  L4_4 = mp
  L4_4 = L4_4.getfilesize
  L4_4 = L4_4()
  if L4_4 > 4096 and L4_4 < 20480 then
    L5_5 = mp
    L5_5 = L5_5.readprotection
    L6_6 = false
    L5_5(L6_6)
    L5_5 = mp
    L5_5 = L5_5.readfile
    L6_6 = 0
    L7_7 = L4_4
    L5_5 = L5_5(L6_6, L7_7)
    L6_6 = string
    L6_6 = L6_6.match
    L7_7 = L5_5
    L6_6 = L6_6(L7_7, "<Exec>.*<Command>(.*)</Command>.*</Exec>")
    L2_2 = L6_6
    L6_6 = string
    L6_6 = L6_6.match
    L7_7 = L5_5
    L6_6 = L6_6(L7_7, "<Exec>.*<Arguments>(.*)</Arguments>.*</Exec>")
    L3_3 = L6_6
  else
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  if L2_2 == nil then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
if L3_3 ~= nil then
  L4_4 = L2_2
  L5_5 = " "
  L6_6 = L3_3
  L2_2 = L4_4 .. L5_5 .. L6_6
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = L2_2
L4_4 = L4_4(L5_5)
L5_5 = string
L5_5 = L5_5.match
L6_6 = L4_4
L7_7 = "(.*powershell[%.exe]-)%s+%-encodedcommand%s+()"
L6_6 = L5_5(L6_6, L7_7)
if L5_5 == nil then
  L7_7 = string
  L7_7 = L7_7.match
  L6_6, L7_7 = L4_4, L7_7(L4_4, "(.*powershell[%.exe]-)%s+.-%-en?c?%s+()")
  L5_5 = L7_7
end
if L5_5 ~= nil and L6_6 ~= nil then
  L7_7 = MpCommon
  L7_7 = L7_7.Base64Decode
  L7_7 = L7_7(string.sub(L2_2, L6_6))
  if L7_7 ~= nil then
    L7_7 = string.gsub(L7_7, "%z", "")
    mp.vfo_add_buffer(L5_5 .. " " .. L7_7, "[TaskSchedCommand]", 0)
  else
    mp.vfo_add_buffer(L2_2, "[TaskSchedCommand]", 0)
  end
else
  L7_7 = mp
  L7_7 = L7_7.vfo_add_buffer
  L7_7(L2_2, "[TaskSchedCommand]", 0)
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
