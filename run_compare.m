clear;

pkg load statistics

# selected confidence level (in percentage)
cl = 95

# number of error signals
n_err = 5

# range of expanded uncertainty values
u_min = 1
u_max = 30

# allowed error signal shapes
shapes = "nuts";

# generate `n_err` error signals with random expanded uncertainty values in range
# of < `u_min` ; `u_max` >, calculate expanded uncertainty `us` based on histogram
# of resultant error signal, `uc_u` using RII method and `uc_n` assuming CLT is met
# us -- expanded uncertainty value based Monte-Carlo simulation resoult
# uc_u -- expanded uncertainty value estimated using RII method
# uc_n -- expanded uncertainty value estimated assuming CLT is met
# err_u -- relative error for `uc_u` value in order to `us` value
# err_n -- relative error for `uc_n` value in order to `us` value
# vu -- expanded uncertainty vector for generated signals
# vu -- vector of generated signal PDF shapes
[us, uc_u, uc_n, err_u, err_n, vu, vc] = gen_redtest(n_err, u_min, u_max, cl, shapes)

