local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.utf8p1
    if L0_0 ~= "" then
      L0_0 = string
      L0_0 = L0_0.lower
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p1
      L0_0 = L0_0(L1_1)
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "/private/tmp/", 1, true)
      if L1_1 ~= 1 then
        L1_1 = string
        L1_1 = L1_1.find
        L1_1 = L1_1(L0_0, "/usr/local/", 1, true)
        if L1_1 ~= 1 then
          L1_1 = string
          L1_1 = L1_1.find
          L1_1 = L1_1(L0_0, "/users/shared", 1, true)
          if L1_1 ~= 1 then
            L1_1 = L0_0.match
            L1_1 = L1_1(L0_0, "/users/.*/desktop/")
            if L1_1 == nil then
              L1_1 = L0_0.match
              L1_1 = L1_1(L0_0, "/users/.*/downloads/")
            end
          end
        end
      elseif L1_1 ~= nil then
        L1_1 = "mac_scp_file_transfer"
        AppendToRollingQueue(L1_1, "file_transferred_path", L0_0)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
