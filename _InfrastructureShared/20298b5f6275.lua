local L0_0, L1_1, L2_2
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
L2_2 = L0_0.match_offset
L2_2 = L2_2 + string.len("begin signature block\r\n")
if L0_0.is_footer and string.sub(L1_1, 1, 1) == "\000" then
  _, L2_2 = string.find(L1_1, "[Bb]egin signature block[\r\n]+")
end
if not L2_2 or not string.find(L1_1, "[\r\n]+[#/'*]+%sSIG%s[#/'*]+%sEnd signature block") then
  return mp.CLEAN
end
L1_1 = string.sub(L1_1, L2_2 + 1, string.find(L1_1, "[\r\n]+[#/'*]+%sSIG%s[#/'*]+%sEnd signature block") - 1)
if not L1_1 then
  return mp.CLEAN
end
if string.find(L1_1, "^#%s") then
  L1_1 = string.gsub(L1_1, "%s*[\r\n]*#%s*", "")
else
  L1_1 = string.gsub(L1_1, "%s*[\r\n]*[#/'*]+%sSIG%s[#/'*]+%s*", "")
end
if not L1_1 or #L1_1 < 2 then
  return mp.CLEAN
end
L1_1 = MpCommon.Base64Decode(L1_1)
if not L1_1 then
  return mp.CLEAN
end
mp.set_mpattributeex("ScriptCertSigSize", string.len(L1_1))
mp.vfo_add_buffer(L1_1, "[ScriptSig]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
mp.UfsSetMetadataBool("ScriptSigDecoded", true, true)
return mp.INFECTED
