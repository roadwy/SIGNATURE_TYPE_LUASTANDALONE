local L0_0, L1_1, L2_2
L0_0 = pe
L0_0 = L0_0.get_imports
L1_1 = L0_0()
if L1_1 == nil or L0_0 < 8 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L2_2[343092605] = {
  [2475908629] = {
    [3195897317] = {
      [1325182298] = {
        [685268768] = {true, "Phobos"}
      }
    }
  }
}
L2_2[696105911] = {
  [986956317] = {
    [1905111730] = {
      [3062562183] = {
        [1423484611] = {
          [3238198240] = {
            [671714487] = {true, "StopCrypt"}
          }
        }
      }
    }
  }
}
L2_2[2810422421] = {
  [823159601] = {
    [3200184792] = {
      [991287556] = {
        [3895199305] = {
          [1185677909] = {
            [404509522] = {
              [635450529] = {true, "BlackCat"}
            }
          }
        }
      }
    }
  }
}
for _FORV_6_ = 1, L0_0 do
  if L2_2[L1_1[_FORV_6_].fn] ~= nil then
    for _FORV_11_ = 0, L0_0 - _FORV_6_ do
      if L2_2[L1_1[_FORV_6_ + _FORV_11_].fn] == nil then
        break
      elseif L2_2[L1_1[_FORV_6_ + _FORV_11_].fn][1] == true then
        if L2_2[L1_1[_FORV_6_ + _FORV_11_].fn][2] ~= nil then
          mp.set_mpattribute("ImportSequenceSignature_" .. L2_2[L1_1[_FORV_6_ + _FORV_11_].fn][2])
        end
        return mp.INFECTED
      end
    end
  end
end
return _FOR_.CLEAN
