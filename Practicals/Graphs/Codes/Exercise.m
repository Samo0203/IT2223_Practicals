s=11;
t=1:10;
G=graph(s,t);
h = plot(G,'Layout','force')

s1=[1 10 5 9 4 8 3 7 2 6];
t1=[10 5 9 4 8 3 7 2 6 1];
G1=graph(s1,t1);
h1 = plot(G1,'Layout','force')

s2=[1 5 4 3 2];
t2=[5 4 3 2 1];
G2=graph(s2,t2);
h2 = plot(G2,'Layout','force')
%g should be purple ,g1 green and g3 red