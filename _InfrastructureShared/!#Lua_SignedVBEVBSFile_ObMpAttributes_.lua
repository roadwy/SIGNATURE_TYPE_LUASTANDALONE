local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = "none"
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == 1585332259 then
  L0_0 = "VBE"
else
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L2_2 = headerpage
  L3_3 = 1
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 == 1667594309 then
    L1_1 = mp
    L1_1 = L1_1.readu_u32
    L2_2 = headerpage
    L3_3 = 5
    L1_1 = L1_1(L2_2, L3_3)
  else
    if L1_1 ~= 677737589 then
      L1_1 = mp
      L1_1 = L1_1.get_mpattribute
      L2_2 = "TARG:VBSWithExecute"
      L1_1 = L1_1(L2_2)
  end
  else
    if L1_1 then
      L0_0 = "VBSExecute"
  end
  else
    L1_1 = mp
    L1_1 = L1_1.get_mpattribute
    L2_2 = "TARG:VBSWithConsecutiveV"
    L1_1 = L1_1(L2_2)
    if L1_1 then
      L0_0 = "VBSConsecutiveV"
    else
      L1_1 = mp
      L1_1 = L1_1.get_mpattribute
      L2_2 = "RPF:AnyFileHasIOAVURL"
      L1_1 = L1_1(L2_2)
      if L1_1 then
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = mp
        L2_2 = L2_2.getfilename
        L4_4 = L2_2()
        L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2())
        L2_2 = string
        L2_2 = L2_2.sub
        L3_3 = L1_1
        L4_4 = -4
        L2_2 = L2_2(L3_3, L4_4)
        if L2_2 == ".vbs" then
          L0_0 = "VBSWithURL"
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 < 12288 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = L1_1 - 12288
L4_4 = 12288
L2_2 = L2_2(L3_3, L4_4)
L4_4 = L2_2
L3_3 = L2_2.find
L3_3 = L3_3(L4_4, "'' SIG '' Begin signature block", 1, true)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L0_0 == "VBE" then
  L4_4 = mp
  L4_4 = L4_4.set_mpattribute
  L4_4("Lua:SignedVBEFile")
elseif L0_0 == "VBSExecute" then
  L4_4 = mp
  L4_4 = L4_4.set_mpattribute
  L4_4("Lua:SignedVBSFileWitExecute")
elseif L0_0 == "VBSConsecutiveV" then
  L4_4 = mp
  L4_4 = L4_4.set_mpattribute
  L4_4("Lua:SignedVBSFileWithVBSConsecutiveV")
elseif L0_0 == "VBSWithURL" then
  L4_4 = mp
  L4_4 = L4_4.set_mpattribute
  L4_4("Lua:SignedVBSFileWithURL")
end
L4_4 = mp
L4_4 = L4_4.UfsSetMetadataBool
L4_4("Lua:SignedVBEVBSFile", true)
L4_4 = string
L4_4 = L4_4.sub
L4_4 = L4_4(L0_0, 1, 3)
if L4_4 == "VBS" then
  L4_4 = mp
  L4_4 = L4_4.get_parent_filehandle
  L4_4 = L4_4()
  if pcall(mp.get_filesize_by_handle, L4_4) == false then
    mp.UfsSetMetadataBool("Lua:SignedVBEVBSTopFile", true)
  end
end
L3_3 = L3_3 + 31
L4_4 = L2_2.sub
L4_4 = L4_4(L2_2, L3_3)
L2_2 = L4_4
L4_4 = L2_2.gsub
L4_4 = L4_4(L2_2, "'' SIG '' ", "")
L2_2 = L4_4
L4_4 = mp
L4_4 = L4_4.vfo_add_buffer
L4_4(L2_2, "[ScriptSigBlock]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
