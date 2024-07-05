if mp.bitand(mp.readu_u32(headerpage, 1), 16777215) == 5461830 then
  if mp.get_mpattribute("SCRIPT:FlashExp_check_spray_exp") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_decrypt_data") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_find_virtprot") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_is_vuln") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_prepare_shell") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_read_data") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_read_keys") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_run_payload") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_run_shell") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_sleep_end") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_spray_obj") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_test_spray") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_wait_and_run") then
  end
  if mp.get_mpattribute("SCRIPT:FlashExp_shellcode") then
  end
  if 0 + 2 + 1 + 1 + 1 + 2 + 1 + 1 + 2 + 2 + 1 + 2 + 1 + 1 + 3 >= 10 then
    return mp.INFECTED
  end
end
return mp.CLEAN
