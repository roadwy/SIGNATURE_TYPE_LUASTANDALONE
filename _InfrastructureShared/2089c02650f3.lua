local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 7
L0_0 = L0_0(L1_1, 4)
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(L0_0, 1)
L0_0 = pe.mmap_va(L1_1, 4)
L1_1 = mp.readu_u32(L0_0, 1)
if pe.query_import(pe.IMPORT_STATIC, 1753664949) and pe.query_import(pe.IMPORT_STATIC, 4207106400) and pe.get_api_id(L1_1) == 3141119381 then
  mp.set_mpattribute("FOP:VirTool:Win32/Obfuscator.Fareit")
end
return mp.LOWFI
