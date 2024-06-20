function [us, uc_u, uc_n, pd_u, pd_n, vu, vc] = gen_redtest(num, u_min, u_max, alpha, shapes)

  vc = char(zeros(0, num));
  u_df = (u_max - u_min);

  rc = randi([1 length(shapes)], num, 1);
  vu = rand(1, num) * u_df + u_min;

  for j = 1 : num
    vc(j) = char(shapes(rc(j)));
  end

  vr = gen_randm(1e5, vc, vu, 'u', alpha);
  us = get_uncertainty(sum(vr), alpha);

  for j = 1 : num
    [vu(j), s, vs(j)] = get_uncertainty(vr(j,:), alpha);
  end

  uc_u = get_unccalc(vu, vc, alpha);
  pd_u = 100 * (uc_u - us) / us;


  uc_n = norminv(1 - (1 - alpha/100) / 2) * sqrt(sum(vs.^2));
  pd_n = 100 * (uc_n - us) / us;

end
