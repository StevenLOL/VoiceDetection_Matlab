function spec = compute_specgram_whole(sig, framesize, framestep, nfft)
% function spec = compute_specgram(sig, framesize, framestep, [nfft])

if (nargin < 4)
  nfft = framesize;
end

frames = mk_frames(sig, framesize, framestep);
for i = 1:size(frames,1);
  % take out DC component
  frames(i,:) = frames(i,:)-mean(frames(i,:));
  % hamming
  frames(i,:) = hamming(framesize)'.*frames(i,:);
end


% computing fft
spec = zeros(size(frames,1),(nfft/2)+1);
for i = 1:size(frames,1);
  tmp = fft(frames(i,:),nfft); 
  spec(i,:) = tmp(1:(nfft/2 + 1)); 
end

