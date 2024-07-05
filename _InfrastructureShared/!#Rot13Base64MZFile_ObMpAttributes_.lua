local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.readfile
L1_1 = 0
L2_2 = mp
L2_2 = L2_2.getfilesize
L4_4 = L2_2()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L2_2())
L2_2 = L0_0
L1_1 = L0_0.find
L3_3 = "GI[dc]DNN[ZV]NNNNRNN"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L2_2.A = "N"
L2_2.B = "O"
L2_2.C = "P"
L2_2.D = "Q"
L2_2.E = "R"
L2_2.F = "S"
L2_2.G = "T"
L2_2.H = "U"
L2_2.I = "V"
L2_2.J = "W"
L2_2.K = "X"
L2_2.L = "Y"
L2_2.M = "Z"
L2_2.N = "A"
L2_2.O = "B"
L2_2.P = "C"
L2_2.Q = "D"
L2_2.R = "E"
L2_2.S = "F"
L2_2.T = "G"
L2_2.U = "H"
L2_2.V = "I"
L2_2.W = "J"
L2_2.X = "K"
L2_2.Y = "L"
L2_2.Z = "M"
L2_2.a = "n"
L2_2.b = "o"
L2_2.c = "p"
L2_2.d = "q"
L2_2.e = "r"
L2_2.f = "s"
L2_2.g = "t"
L2_2.h = "u"
L2_2.i = "v"
L2_2.j = "w"
L2_2.k = "x"
L2_2.l = "y"
L2_2.m = "z"
L2_2.n = "a"
L2_2.o = "b"
L2_2.p = "c"
L2_2.q = "d"
L2_2.r = "e"
L2_2.s = "f"
L2_2.t = "g"
L2_2.u = "h"
L2_2.v = "i"
L2_2.w = "j"
L2_2.x = "k"
L2_2.y = "l"
L2_2.z = "m"
L2_2["0"] = "0"
L2_2["1"] = "1"
L2_2["2"] = "2"
L2_2["3"] = "3"
L2_2["4"] = "4"
L2_2["5"] = "5"
L2_2["6"] = "6"
L2_2["7"] = "7"
L2_2["8"] = "8"
L2_2["9"] = "9"
L2_2["+"] = "+"
L2_2["/"] = "/"
L2_2["="] = "="
L4_4 = L0_0
L3_3 = L0_0.match
L3_3 = L3_3(L4_4, "[A-Za-z0-9+/=]+", L1_1)
L4_4 = L3_3.gsub
L4_4 = L4_4(L3_3, ".", L2_2)
mp.vfo_add_buffer(L4_4, "[Base64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
