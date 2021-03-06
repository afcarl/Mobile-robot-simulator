function [g1, l1, resize_rate, g2, l2] = parse_occflowparams(vec)

occval = 1; noccval = 0;

g1  = set_grid(0, 20000, 100, -10000, 10000, 100);
l1  = init_occflowLayer( ...
    g1, vec(1), vec(1), vec(2), vec(3), vec(3), vec(4) ...
    , vec(5), vec(6), vec(7) ...
    , vec(8), vec(9), vec(10) ...
    , vec(11), vec(12), vec(13), occval, noccval ...
    );
resize_rate = vec(27);
g2 = set_grid(0, 20000, 100*resize_rate, -10000, 10000, 100*resize_rate);
l2 = init_occflowLayer( ...
    g2, vec(14), vec(14), vec(15), vec(16), vec(16), vec(17)...
    , vec(18), vec(19), vec(20) ...
    , vec(21), vec(22), vec(23) ...
    , vec(24), vec(25), vec(26), occval, noccval ...
    );

occflow.l1 = l1;
occflow.l2 = l2;
occflow.g1 = g1;
occflow.g2 = g2;
occflow.resize_rate = resize_rate;