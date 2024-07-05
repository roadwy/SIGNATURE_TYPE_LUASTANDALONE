local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 == 32 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L3_3 = L1_1()
  L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1())
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L3_3 = -4
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 == ".png" then
    L2_2 = L0_0
    L1_1 = L0_0.match
    L3_3 = "(.+\\)([^\\]+)$"
    L2_2 = L1_1(L2_2, L3_3)
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L1_1, -18)
    if L3_3 ~= "\\appdata\\locallow\\" then
      L3_3 = string
      L3_3 = L3_3.sub
      L3_3 = L3_3(L1_1, -33)
    elseif L3_3 == "\\local settings\\application data\\" then
      L3_3 = string
      L3_3 = L3_3.match
      L3_3 = L3_3(L2_2, "^%l%l%l%l%l%l%l%l%l%l%.png$")
      if L3_3 then
        L3_3 = mp
        L3_3 = L3_3.readprotection
        L3_3(false)
        L3_3 = mp
        L3_3 = L3_3.readfile
        L3_3 = L3_3(0, 32)
        if not string.match(L3_3, "[^%x]") then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
