local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
if L0_0 ~= "" then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\wmiprvse.exe", 1, true)
elseif L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[1]
      L1_1 = L1_1.utf8p2
      if string.find(L1_1, "/Q ", 1, true) and string.find(L1_1, "/c ", 1, true) and not string.find(L1_1, "/Q /D ", 1, true) and not string.find(L1_1, "/Q /c netstat -anop TCP 1>", 1, true) and not string.find(L1_1, "/U /Q ", 1, true) then
        reportSessionInformation()
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
