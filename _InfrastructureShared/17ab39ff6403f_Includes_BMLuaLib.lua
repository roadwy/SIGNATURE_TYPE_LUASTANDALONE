local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = 0
L1_1 = ""
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L1_1 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L1_1 = L2_2.utf8p2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L1_1 = L2_2.utf8p2
      end
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L2_2 = L2_2.utf8p2
        if L2_2 ~= nil then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[5]
          L1_1 = L2_2.utf8p2
        end
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[6]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L2_2 = L2_2.utf8p2
          if L2_2 ~= nil then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[6]
            L1_1 = L2_2.utf8p2
          end
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[7]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[7]
            L2_2 = L2_2.utf8p2
            if L2_2 ~= nil then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[7]
              L1_1 = L2_2.utf8p2
            end
          else
            L2_2 = this_sigattrlog
            L2_2 = L2_2[8]
            L2_2 = L2_2.matched
            if L2_2 then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[8]
              L2_2 = L2_2.utf8p2
              if L2_2 ~= nil then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[8]
                L1_1 = L2_2.utf8p2
              end
            else
              L2_2 = this_sigattrlog
              L2_2 = L2_2[9]
              L2_2 = L2_2.matched
              if L2_2 then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[9]
                L2_2 = L2_2.utf8p2
                if L2_2 ~= nil then
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[9]
                  L1_1 = L2_2.utf8p2
                end
              end
            end
          end
        end
      end
    end
  end
end
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L4_4 = ".:\\.*\\"
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = {
    L4_4,
    L5_5,
    "vcruntime140.dll",
    "mozglue.dll",
    "freebl3.dll",
    "softokn3.dll",
    "sqlite3.dll",
    "nssdbm3.dll"
  }
  L4_4 = "nss3.dll"
  L5_5 = "msvcp140.dll"
  L4_4 = #L3_3
  L5_5 = ""
  for _FORV_9_ = 1, L4_4 do
    L5_5 = L2_2 .. L3_3[_FORV_9_]
    if sysio.IsFileExists(L5_5) then
      L0_0 = L0_0 + 1
    end
  end
end
if L0_0 > 5 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
