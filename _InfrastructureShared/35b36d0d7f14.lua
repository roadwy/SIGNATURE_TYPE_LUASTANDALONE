local L0_0, L1_1, L2_2
L0_0 = false
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L1_1)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.sub
L2_2 = L2_2(L1_1, -12)
if L2_2 == "explorer.exe" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
else
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(L1_1, -10)
  if L2_2 ~= "cpufix.exe" then
    L2_2 = string
    L2_2 = L2_2.sub
    L2_2 = L2_2(L1_1, -11)
    if L2_2 ~= "antiusb.exe" then
      L2_2 = string
      L2_2 = L2_2.sub
      L2_2 = L2_2(L1_1, -12)
      if L2_2 ~= "streamer.exe" then
        L2_2 = string
        L2_2 = L2_2.sub
        L2_2 = L2_2(L1_1, -13)
        if L2_2 ~= "radnewage.exe" then
          L2_2 = string
          L2_2 = L2_2.sub
          L2_2 = L2_2(L1_1, -14)
          if L2_2 ~= "cpuchecker.exe" then
            L2_2 = string
            L2_2 = L2_2.sub
            L2_2 = L2_2(L1_1, -19)
            if L2_2 ~= "winddowsupdater.exe" then
              L0_0 = true
            end
          end
        end
      end
    end
  end
end
L2_2 = nil
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L2_2 = string.lower(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[1].utf8p1))
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L2_2 = string.lower(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1))
else
  return mp.CLEAN
end
for _FORV_8_ in string.gmatch(L2_2, "[^\\]+") do
  ({})[0 + 1] = _FORV_8_
end
if #{} >= 2 and string.len(({})[#{}]) == string.len(({})[#{} - 1]) + 9 and string.sub(({})[#{}], 1, string.len(({})[#{} - 1])) == ({})[#{} - 1] then
  if L0_0 == true then
    mp.ReportLowfi(L1_1, 4187849358)
  else
    return mp.INFECTED
  end
end
return mp.CLEAN
