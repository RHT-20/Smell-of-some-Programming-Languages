  x = [0 : 0.01 : 1];
  y1 = sin(2 * pi * 4 * x);
  y2 = cos(2 * pi * 4 * x);
  
-------------------------------------------------------------------
% making plots  
  plot(x, y1);      % x along x-axis and y1 along y-axis
  %or
  plot(x, y1, 'r'); % here 'r' means red color

% make one plot on another
  plot(x, y1);
  hold on;
  plot(x, y2);

-------------------------------------------------------------------  
% labelling the axes
  xlabel('time');
  ylabel('value');

% labelling the graphs
  legend('sin', 'cos');

% add title
  title('sin and cos plots');

% save plot as an image. type help plot to learn about different formats
  print -dpng 'sin_and_cos_plots.png'

% close plot
  close

-------------------------------------------------------------------  
% make two plots in two different window and naming plots
  figure(1);  plot(x, y1);
  figure(2);  plot(x, y2);

-------------------------------------------------------------------  
% divide plot into a 1x2 grid
  subplot(1,2,1); % accessing 1st element
  plot(x, y1);
  subplot(1,2,2); % accessing 2nd element
  plot(x, y2);

-------------------------------------------------------------------  
% changing scale
  axis([0.5 1 -1 1])  % 1st 2 range of x-axis, 2nd 2 range of y-axis

% clear figure
  clf;

-------------------------------------------------------------------  
% visualize a matrix
  A = magic(5);
  imagesc(A);
  imagesc(A), colorbar, colormap gray;  % uses grayscale image with colorbar

-------------------------------------------------------------------  
  % creating a histrogram
  w = -6 + sqrt(10) * (randn(1,10000));
  hist(w);
  hist(w, 50);  % here, 50 is the number of buckets
  