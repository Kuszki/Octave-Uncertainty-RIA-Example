clear;

pkg load statistics

# selected confidence level (in percentage)
cl = 95

# vector of expanded uncertaintes
uv = [ 1 5 7 2 ]

# vector of signal PDF shapes
cv = "nuts"

# calculate resultant expanded uncertainty using RII algorithm
# u -- calculated expanded uncertainty
# c -- estimated coverage factor
# s -- calculated standard uncertainty
# w -- calculated varriance
# h -- hoherence coeficients matrix used in calculations
[u, c, s, w, h] = get_unccalc(uv, cv, cl)

