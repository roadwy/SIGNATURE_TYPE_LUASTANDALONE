local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 32 or L0_0 > 65536 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_SCANREASON)
if L1_1 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.getfilename())
if string.find(L1_1, "h_e_l_p_recover_", 1, true) or string.find(L1_1, "help_instructions", 1, true) or string.find(L1_1, "help_recover_", 1, true) or string.find(L1_1, "help_restore_files", 1, true) or string.find(L1_1, "help_to_decrypt_your_files", 1, true) or string.find(L1_1, "help_to_save_your_files", 1, true) or string.find(L1_1, "how_recover", 1, true) or string.find(L1_1, "recover_file_", 1, true) or string.find(L1_1, "recovery+", 1, true) or string.find(L1_1, "recovery_", 1, true) or string.find(L1_1, "recover+", 1, true) or string.find(L1_1, "recover_instructions", 1, true) or string.find(L1_1, "restore_files_", 1, true) or string.find(L1_1, "restoring files", 1, true) or string.find(L1_1, "decrypt my files", 1, true) or string.find(L1_1, "howdo_text", 1, true) or string.find(L1_1, "your_files_are_encrypted", 1, true) or string.find(L1_1, "readme_for_save files", 1, true) or string.find(L1_1, "save your files", 1, true) or string.find(L1_1, "recover_file_%a%a%a%a%a%a%a%a%a%.txt$") or string.find(L1_1, "^recover%.txt$") or string.find(L1_1, "^recover_file%.txt$") or string.find(L1_1, "^%+recover%+file%.txt$") or string.find(L1_1, "^_recover_file%.txt$") or string.find(L1_1, "^%-help%-file%.txt$") or string.find(L1_1, "^%-!recover!%-!file!%-%.txt$") or string.find(L1_1, "^help_%w+%.html$") then
  return mp.INFECTED
end
return mp.CLEAN
