local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L6_6 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L1_1(L2_2, L3_3))
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  ".xlsm->",
  ".xlsb->",
  ".xltx->",
  ".xltm->",
  ".xlam->",
  ".xla->",
  ".docm->",
  ".dotx->",
  ".dotm->",
  ".ppt->",
  ".pptm->",
  ".pps->",
  ".pptx->",
  ".ppsx->",
  ".odt->"
}
L5_5 = ".docx->"
L6_6 = ".rtf->"
for L5_5, L6_6 in L2_2(L3_3) do
  if string.find(L0_0, L6_6, 1, true) ~= nil then
    if string.find(L0_0, L6_6, 1, true) >= string.len(L0_0) or string.find(L0_0, L6_6, 1, true) < 6 then
      return mp.CLEAN
    end
    if mp.get_mpattribute("BM_XML_FILE") then
      mp.set_mpattribute("LuaXmlInOOFile")
    elseif mp.get_mpattribute("Lua:LNKExt") then
      mp.set_mpattribute("LuaLNKOOFile")
    elseif mp.get_mpattribute("Lua:VBSExt") then
      mp.set_mpattribute("LuaVbsInOOFile")
    elseif mp.get_mpattribute("Lua:HTAExt") then
      mp.set_mpattribute("LuaHtaInOOFile")
    elseif mp.get_mpattribute("Lua:URLExt") then
      mp.set_mpattribute("LuaUrlInOOFile")
    elseif mp.get_mpattribute("Nscript:Type_ps") then
      mp.set_mpattribute("LuaPSInOOFile")
    end
  end
end
return L2_2
