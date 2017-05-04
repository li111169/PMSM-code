
% syms id iq;
us=207.84;
wr=1256;
% wc=2280.2;
r=0;
Ld=1.6283e-04;
Lq=5.86188e-04;
lambdaaf=0.08704349576;

fh=@(id,iq) us^2-(wr*lambdaaf+wr*Ld*id).^2-(wr*Lq*iq).^2;
% eqn= us^2-(wr*lambdaaf+wr*Ld*id)^2+(wr*Lq*iq)==0;
% sol=solve(eqn);
wc=((207.84-320.74*r)/lambdaaf);
fh1=@(id,iq) id.^2+iq.^2-320.74^2;
ezplot(fh,[-1200,1200]);
hold on
ezplot(fh1,[-1200,1200])

fh3=@(id,iq) us^2-(wc*lambdaaf+wc*Ld*id).^2-(wc*Lq*iq).^2;
ezplot(fh3,[-1200,1200])
fh4=@(id,iq) id+lambdaaf/(4*(Ld-Lq))+sqrt(lambdaaf^2/(16*(Ld-Lq)^2)+0.5*(id^2+iq^2));

ezplot(fh4,[-500,500],[0,500]);
syms ud uq;
np=2;
% ud=(-wc*Lq*iq+id*r);
% uq=(r*iq+wc*Ld*id+wc*lambdaaf);
fh5=@(id,iq) (3*np*(Ld-Lq)*((r*iq+wc*Ld*id+wc*lambdaaf)*r-(-wc*Lq*iq+id*r)*wc*Lq)-3*np*((Ld-Lq)*id+lambdaaf)*((-wc*Lq*iq+id*r)*r+(r*iq+wc*Ld*id+wc*lambdaaf)*wc*Ld))/(2*sqrt((-wc*Lq*iq+id*r)^2+(r*iq+wc*Ld*id+wc*lambdaaf)^2));
ezplot(fh5,[-500,0],[0,500])
axis equal

h0 = gca;                % ?????????
pos = get(h0, 'position');     % ??????????
% ????x?
hx = axes('position', [pos(1),pos(2)+pos(4)/2,pos(3),pos(4)*1e-5]);
xlim0 = get(h0, 'xlim');        % ???x???
set(hx, 'xlim',xlim0);           % ??x????
xtick0 = get(h0, 'xtick');      % ???x???
set(hx, 'xtick', xtick0);        % ??x???
% ????y?
hy = axes('position', [pos(1)+pos(3)/2, pos(2), pos(3)*1e-5, pos(4)]);
ylim0 = get(h0, 'ylim');       % ???y???
set(hy, 'ylim', ylim0);         % ??y????
ytick0 = get(h0, 'ytick');    % ???y???
set(hy, 'ytick', ytick0);       % ??y???
% ?x?y??????x?y??????????????
annotation('arrow',[pos(1)+pos(3)/2,pos(1)+pos(3)],[pos(2)+pos(4)/2,pos(2)+pos(4)/2]);
annotation('arrow',[pos(1)+pos(3)/2,pos(1)+pos(3)/2],[pos(2)+pos(4)/2,pos(2)+pos(4)]);
set(h0, 'Visible', 'off');       % ????????


