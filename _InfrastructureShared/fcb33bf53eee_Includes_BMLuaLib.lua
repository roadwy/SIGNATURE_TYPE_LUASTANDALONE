local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[6]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[6]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.utf8p1
    L0_0 = L0_0(L1_1)
    if L0_0 ~= nil and L0_0 ~= "" then
      L1_1 = L0_0.match
      L1_1 = L1_1(L0_0, "\\([^\\]+)$")
      if this_sigattrlog[7].matched and this_sigattrlog[7].utf8p2 ~= nil then
        if string.lower(this_sigattrlog[7].utf8p2):find("ablebitsdownloader.exe", 1, true) or string.lower(this_sigattrlog[7].utf8p2):find("gzipcompress.exe", 1, true) or string.lower(this_sigattrlog[7].utf8p2):find("cognossessionmonitor.exe", 1, true) or string.lower(this_sigattrlog[7].utf8p2):find("webviewhost.exe", 1, true) then
          return mp.CLEAN
        end
        if string.lower(this_sigattrlog[7].utf8p2):find(L1_1, 1, true) then
          if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil and bm.get_current_process_startup_info().command_line ~= "" then
            bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
          end
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
