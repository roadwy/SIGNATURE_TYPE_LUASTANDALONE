local L0_0, L1_1
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
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_FILENAME)
  if (string.sub(L1_1, -4) == ".exe" or string.sub(L1_1, -4) == ".vbs") and L1_1:match("^install_flashplayer%d%dx%d%dax_ver[%d%.]+sd_update") then
    if mp.get_mpattribute("SIGATTR:VirTool:Win32/OwnProcessWriteProcMem") then
      mp.set_mpattribute("Lowfi:Lua:TrapwotFilenameAndObfus")
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
