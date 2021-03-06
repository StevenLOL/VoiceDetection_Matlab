function [f] = origAcorrRSEMaxPVar01(ex)

f = zeros(size(ex.fstructs,2), 3);

for i=1:size(ex.fstructs,2)
    f(i,1) = max(ex.fstructs(i).peakvals01);
    f(i,2) = ex.fstructs(i).variance01;
    f(i,3) = ex.fstructs(i).relspecent;
end
