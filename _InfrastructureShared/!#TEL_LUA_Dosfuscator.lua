local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
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
if L1_1 ~= "cmd.exe" then
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L3_3 = "BM_CMD_EXE"
  L2_2 = L2_2(L3_3)
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESS_PPID
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.GetProcessCommandLine
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.len
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if L4_4 < 1000 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L4_4
if L5_5 > 1000 then
  L5_5 = 1000
end
L6_6 = 0
L7_7 = 0
L8_8 = 0
L9_9 = 0
L10_10 = 0
L11_11 = false
L12_12 = string
L12_12 = L12_12.gsub
L12_12 = L12_12(L3_3, " ", 30)
L3_3 = L12_12
L12_12 = string
L12_12 = L12_12.gsub
L7_7, L12_12 = L3_3, L12_12(L3_3, "#", 10)
_ = L12_12
L12_12 = string
L12_12 = L12_12.gsub
L8_8, L12_12 = L3_3, L12_12(L3_3, ",", 30)
_ = L12_12
L12_12 = string
L12_12 = L12_12.gsub
L9_9, L12_12 = L3_3, L12_12(L3_3, "[%(%)]", 30)
_ = L12_12
L12_12 = string
L12_12 = L12_12.gsub
L10_10, L12_12 = L3_3, L12_12(L3_3, ";;", "", 30)
_ = L12_12
if L10_10 >= 30 then
  L12_12 = mp
  L12_12 = L12_12.set_mpattribute
  L12_12("LUA:Dosfuscator2Semicolon")
  L11_11 = true
end
L12_12 = string
L12_12 = L12_12.gsub
L12_12 = L12_12(L3_3, "%^[&<>%^|\\]", "")
_, L6_6 = string.gsub(L12_12, "%^", "", 30)
if L6_6 >= 30 then
  mp.set_mpattribute("LUA:DosfuscatorExp")
  L11_11 = true
end
if L7_7 > 10 then
  mp.set_mpattribute("LUA:DosfuscatorSharp")
  L11_11 = true
end
if L8_8 > 30 then
  mp.set_mpattribute("LUA:DosfuscatorComma")
  L11_11 = true
end
if L9_9 > 30 then
  mp.set_mpattribute("LUA:DosfuscatorParenthesis")
  L11_11 = true
end
if L11_11 then
  return mp.INFECTED
end
return mp.CLEAN
