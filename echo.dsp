import("stdfaust.lib");

d(n, f) = +~del with {
  del = @(n) * f;
};

num = hslider("Delay 1 [unit:seconds]", 0.1, 0, 2, 0.05);
fb = hslider("Feedback 1", 0.5, 0.0, 1.0, 0.1);
num2 = hslider("Delay 2 [unit:seconds]", 0.1, 0, 2, 0.05);
fb2 = hslider("Feedback 2", 0.5, 0.0, 1.0, 0.1);

process = (d(ba.sec2samp(num), fb)), (d(ba.sec2samp(num2), fb2));
			