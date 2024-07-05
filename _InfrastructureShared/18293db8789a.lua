local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = L0_0.is_header
if L2_2 then
  L2_2 = headerpage
else
  L2_2 = L2_2 or footerpage
end
L1_1 = L1_1(L2_2)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.len
L3_3 = "<signature>\r\n"
L2_2 = L2_2(L3_3)
L3_3 = L0_0.match_offset
L3_3 = L3_3 + L2_2
L4_4 = L0_0.is_footer
if L4_4 then
  L4_4 = string
  L4_4 = L4_4.sub
  L5_5 = L1_1
  L6_6 = 1
  L4_4 = L4_4(L5_5, L6_6, 1)
  if L4_4 == "\000" then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = "<signature>[\r\n]*"
    L5_5 = L4_4(L5_5, L6_6)
    L3_3 = L5_5
    _ = L4_4
  end
end
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L5_5 = L1_1
L6_6 = "[%w=][^%w=]*</signature>"
L4_4 = L4_4(L5_5, L6_6, L0_0.match_offset)
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.sub
L6_6 = L1_1
L5_5 = L5_5(L6_6, L3_3, L4_4 - 1)
L1_1 = L5_5
if not L1_1 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.gsub
L6_6 = L1_1
L5_5 = L5_5(L6_6, "%s*[\r\n]+..%sSIG%s..%s*", "")
L1_1 = L5_5
if L1_1 then
  L5_5 = #L1_1
elseif L5_5 < 2 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = pcall
L6_6 = MpCommon
L6_6 = L6_6.Base64Decode
L6_6 = L5_5(L6_6, L1_1)
if not L5_5 or not L6_6 then
  return mp.CLEAN
end
mp.vfo_add_buffer(L6_6, "[ScriptSig]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
mp.UfsSetMetadataBool("ScriptSigDecoded", true, true)
return mp.INFECTED
