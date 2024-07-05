local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(15437, 4)
if mp.readu_u32(L0_0, 1) == 4018468997 then
  L0_0 = mp.readfile(15473, 20)
  if L0_0 ~= "\198\208\212\199\214\221\155\219\212\216\208\196\192\208\199\204\155\214\218\216" then
    return mp.INFECTED
  end
end
return mp.CLEAN
