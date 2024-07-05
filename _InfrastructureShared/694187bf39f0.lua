local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[5]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = string
      L0_0 = L0_0.lower
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.p1
      L0_0 = L0_0(L1_1)
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.p1
      L1_1 = L1_1(L2_2)
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = this_sigattrlog
      L3_3 = L3_3[5]
      L3_3 = L3_3.p1
      L2_2 = L2_2(L3_3)
      L3_3 = string
      L3_3 = L3_3.lower
      L3_3 = L3_3(this_sigattrlog[5].p2)
      if L0_0 and string.find(L0_0, "^(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)$") and L1_1 and string.find(L1_1, "^%d%d%d+") and L2_2 and L3_3 and string.find(L2_2, "^%d%d%d+") and string.find(L3_3, "^(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)$") then
        if peattributes.x86_image then
          if not mp.get_mpattribute("do_exhaustivehstr_rescan") then
            mp.set_mpattribute("do_exhaustivehstr_rescan")
          end
        elseif peattributes.amd64_image and not mp.get_mpattribute("do_exhaustivehstr_64bit_rescan") then
          mp.set_mpattribute("do_exhaustivehstr_64bit_rescan")
        end
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
